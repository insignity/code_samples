import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/features/quick_order/ui/widgets/guest_count_setter.dart';
import '../../../../core/components/app_header.dart';
import '../../../../core/components/app_loader.dart';
import '../../../../core/components/failure_handler.dart';
import '../../../../core/di/service_locator.dart';
import '../../../../core/theming/app_theming.dart';
import '../../../../core/utils/configuration.dart';
import '../bloc/quick_order_bloc.dart';
import '../widgets/dish_router.dart';
import '../widgets/order_check.dart';

class QuickOrderPage extends StatefulWidget {
  const QuickOrderPage({Key? key}) : super(key: key);

  @override
  State<QuickOrderPage> createState() => _QuickOrderPageState();
}

class _QuickOrderPageState extends State<QuickOrderPage> {
  final bloc = sl<QuickOrderBloc>();

  @override
  void initState() {
    bloc.add(const QuickOrderEvent.getDishes());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuickOrderBloc, QuickOrderState>(
      bloc: bloc,
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const AppLoader(),
          loaded: (dishes, orderedDishes, guestsCount) {
            return Scaffold(
              appBar: AppHeader(
                title: 'Быстрый заказ',
                trailing: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const CircleAvatar(child: Icon(Icons.person)),
                    const WBox(14),
                    Padding(
                      padding: const EdgeInsets.only(right: 110),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Гость', style: context.txt.bm),
                          Text('Авторизовать', style: context.txt.tm),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(AppIcons.login),
                      ),
                    )
                  ],
                ),
              ),
              backgroundColor: AppColors.background,
              body: Row(
                children: [
                  Expanded(
                    flex: 15,
                    child: DishRouter(dishes: dishes),
                  ),
                  Expanded(
                    flex: 8,
                    child: guestsCount == null
                        ? GuestCountSetter(
                            onPressed: (guestsCount) {
                              bloc.add(
                                  QuickOrderEvent.setGuestCount(guestsCount));
                            },
                          )
                        : OrderCheck(guestsCount: guestsCount),
                  ),
                ],
              ),
            );
          },
          error: (failure) =>
              FailureHandler(failure: failure, onPressed: () {}),
        );
      },
    );
  }
}
