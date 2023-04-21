import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/configuration.dart';
import '../../../../entities/entities.dart';
import 'order_dish.dart';

class DishRouter extends StatefulWidget {
  final List<DishEntity> dishes;

  const DishRouter({Key? key, required this.dishes}) : super(key: key);

  @override
  State<DishRouter> createState() => _DishRouterState();
}

class _DishRouterState extends State<DishRouter> {
  List<DishEntity> get rootDishes => widget.dishes;
  List<List<DishEntity>> router = [];

  List<DishEntity> get currentRoute => router.last;

  @override
  void initState() {
    router.add(rootDishes);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  if (router.first != currentRoute) {
                    routerPop();
                  } else {
                    context.router.pop();
                  }
                },
                child: Row(
                  children: const [
                    Icon(Icons.arrow_back_sharp),
                    Padding(
                      padding: EdgeInsets.only(left: 22),
                      child: Text('Назад'),
                    ),
                  ],
                ),
              ),
              const WBox(41),
              const SizedBox(
                width: 380,
                child: TextField(
                  decoration: InputDecoration(hintText: "Search"),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 40,
              left: 40,
            ),
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              alignment: WrapAlignment.start,
              runAlignment: WrapAlignment.start,
              children: [
                for (final dish in currentRoute)
                  GestureDetector(
                    onTap: () {
                      if (dish.dishes != null && dish.dishes!.isNotEmpty) {
                        routerPush(dish);
                      }
                    },
                    child: OrderDish(dish: dish),
                  )
              ],
            ),
          ),
        )
      ],
    );
  }

  void routerPush(DishEntity dish) {
    router.add(dish.dishes!);
    setState(() {});
  }

  void routerPop() {
    router.removeLast();
    setState(() {});
  }
}
