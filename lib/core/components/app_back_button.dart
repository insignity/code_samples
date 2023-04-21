import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../theming/app_theming.dart';
import '../utils/configuration.dart';

class AppBackButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Color? color;

  const AppBackButton({Key? key, this.onTap, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap ?? context.router.pop,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.arrow_back_sharp,
            color: color ?? AppColors.firstText,
          ),
          const WBox(16),
          Text('Назад', style: context.txt.tl! + color)
        ],
      ),
    );
  }
}
