import 'package:auto_route/auto_route.dart';
import 'package:erp_ipad/entities/entities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/components/app_header.dart';
import '../../../../core/components/app_loader.dart';
import '../../../../core/components/failure_handler.dart';
import '../../../../core/di/service_locator.dart';
import '../bloc/order_bloc.dart';
import '../widgets/dish_router.dart';

class OrderPage extends StatefulWidget {
  final int id;
  final TableEntity table;

  const OrderPage(
      {Key? key, @PathParam('id') required this.id, required this.table})
      : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final bloc = sl<OrderBloc>();

  @override
  void initState() {
    bloc.add(const OrderEvent.setNewOrder());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderBloc, OrderState>(
      bloc: bloc,
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const AppLoader(),
          loaded: (dishes, guestCount) {
            return Scaffold(
              appBar: AppHeader(title: widget.table.name),
              body: Row(
                children: [
                  Expanded(
                    flex: 15,
                    child: DishRouter(dishes: dishs),
                  ),
                  Expanded(
                    flex: 8,
                    child: Placeholder(), //todo:guests and orders
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

final List<DishEntity> dishs = [
  DishEntity(id: 0, name: 'dish0', dishes: [
    DishEntity(id: 9, name: 'dish9', dishes: [
      DishEntity(id: 6, name: 'dish6'),
      DishEntity(id: 7, name: 'dish7'),
      DishEntity(id: 8, name: 'dish8'),
    ]),
    DishEntity(id: 10, name: 'dish10'),
    DishEntity(id: 11, name: 'dish11'),
  ]),
  DishEntity(id: 1, name: 'dish1'),
  DishEntity(id: 2, name: 'dish2'),
  DishEntity(id: 3, name: 'dish3'),
  DishEntity(id: 4, name: 'dish4'),
  DishEntity(id: 5, name: 'dish5'),
];
