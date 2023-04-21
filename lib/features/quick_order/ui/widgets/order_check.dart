import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/entities/entities.dart';
import '../../../../core/components/app_loader.dart';
import '../../../../core/components/failure_handler.dart';
import '../../../../core/di/service_locator.dart';
import '../../../../core/theming/app_theming.dart';
import '../../../../core/utils/configuration.dart';
import '../bloc/quick_order_bloc.dart';
import 'guest_counter.dart';

class OrderCheck extends StatefulWidget {
  final int? guestsCount;

  const OrderCheck({Key? key, this.guestsCount}) : super(key: key);

  @override
  State<OrderCheck> createState() => _OrderCheckState();
}

class _OrderCheckState extends State<OrderCheck> {
  final bloc = sl<QuickOrderBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuickOrderBloc, QuickOrderState>(
      bloc: bloc,
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const AppLoader(),
          error: (failure) =>
              FailureHandler(failure: failure, onPressed: () {}),
          loaded: (dishes, orderedDishes, guestsCount) {
            return ColoredBox(
              color: AppColors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GuestCounter(guestsCount: widget.guestsCount),
                  const Divider(height: 1),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (_, index) {
                        return CheckDish(
                          dish: orderedDishes[index],
                          onDismissed: () {
                            bloc.add(QuickOrderEvent.removeDish(
                                orderedDishes[index]));
                            setState(() {});
                          },
                        );
                      },
                      itemCount: orderedDishes.length,
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class CheckDish extends StatefulWidget {
  final DishEntity dish;
  final VoidCallback onDismissed;

  const CheckDish({Key? key, required this.dish, required this.onDismissed})
      : super(key: key);

  @override
  State<CheckDish> createState() => _CheckDishState();
}

class _CheckDishState extends State<CheckDish> {
  DishEntity get dish => widget.dish;
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slidable(
          key: UniqueKey(),
          startActionPane: ActionPane(
            motion: const ScrollMotion(),
            dismissible: DismissiblePane(onDismissed: widget.onDismissed),
            children: [
              SlidableAction(
                onPressed: (_) => widget.onDismissed,
                backgroundColor: Color(0xFFFE4A49),
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Delete',
              ),
            ],
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            color: Colors.transparent,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(dish.name),
                    const Spacer(),
                    Text("${dish.price!.toInt()}.00 тг"),
                  ],
                ),
                const HBox(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (counter > 1) {
                          counter--;
                          setState(() {});
                        }
                      },
                      child: SvgPicture.asset(AppIcons.remove),
                    ),
                    SizedBox(
                      width: 45,
                      child: Center(child: Text(counter.toString())),
                    ),
                    GestureDetector(
                      onTap: () {
                        counter++;
                        setState(() {});
                      },
                      child: SvgPicture.asset(AppIcons.add),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const Divider(height: 2),
      ],
    );
  }
}
