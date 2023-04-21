import 'package:flutter/material.dart';

import '../../../../core/theming/app_theming.dart';
import '../../../../core/utils/configuration.dart';
import '../../../../entities/entities.dart';

class OrderDish extends StatelessWidget {
  final DishEntity dish;

  const OrderDish({Key? key, required this.dish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: const [AppShadows.shadow],
        borderRadius: BorderRadius.circular(6),
      ),
      height: 150,
      width: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.emoji_food_beverage),
          const HBox(16),
          Text(dish.name),
        ],
      ),
    );
  }
}
