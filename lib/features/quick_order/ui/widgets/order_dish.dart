import 'package:flutter/material.dart';

import '/core/utils/configuration.dart';
import '/features/quick_order/ui/bloc/quick_order_bloc.dart';
import '../../../../core/di/service_locator.dart';
import '../../../../core/theming/app_theming.dart';
import '../../../../entities/entities.dart';

class OrderDish extends StatefulWidget {
  final DishEntity dish;
  final VoidCallback onTap;

  const OrderDish({Key? key, required this.dish, required this.onTap})
      : super(key: key);

  @override
  State<OrderDish> createState() => _OrderDishState();
}

class _OrderDishState extends State<OrderDish> {
  bool isTapped = false;

  final bloc = sl<QuickOrderBloc>();

  Color get color => isTapped ? AppColors.primary : AppColors.white;

  Color? get textColor => isTapped ? AppColors.white : null;

  bool get isDish => widget.dish.dishes == null;

  void onTapDown(TapDownDetails details) {
    isTapped = true;
    setState(() {});
  }

  void onTapUp(TapUpDetails details) {
    isTapped = false;
    setState(() {});
  }

  void onTapCancel() {
    isTapped = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: onTapDown,
      onTapUp: onTapUp,
      onTapCancel: onTapCancel,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          boxShadow: const [AppShadows.shadow],
          borderRadius: BorderRadius.circular(6),
        ),
        height: 150,
        width: 160,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (widget.dish.image != null)
              Expanded(
                child: Image.network(widget.dish.image!, fit: BoxFit.fitWidth),
              ),
            Container(
              height: 50,
              color: color,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.dish.name, style: context.txt.bs! + textColor),
                  if (widget.dish.price != null)
                    Text(
                      "${widget.dish.price!.toInt()}.00 тг",
                      style: context.txt.ll! + textColor,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
