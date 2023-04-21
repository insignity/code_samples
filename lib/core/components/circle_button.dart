import 'package:flutter/material.dart';

import '../theming/app_theming.dart';

class CircleButton extends StatefulWidget {
  final Color? color;
  final VoidCallback? onPressed;
  final double height;
  final double width;
  final Widget child;

  const CircleButton({
    Key? key,
    required this.child,
    this.onPressed,
    this.color,
    this.height = 95,
    this.width = 95,
  }) : super(key: key);

  @override
  State<CircleButton> createState() => _CircleButtonState();
}

class _CircleButtonState extends State<CircleButton> {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: AppColors.background,
        child: InkWell(
          splashColor: AppColors.white,
          onTap: widget.onPressed,
          child: Container(
            alignment: Alignment.center,
            height: widget.height,
            width: widget.width,
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
