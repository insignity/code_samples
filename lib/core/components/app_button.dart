import 'package:flutter/material.dart';

import '../theming/app_theming.dart';

class AppButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String title;
  final EdgeInsets margin;

  const AppButton({
    super.key,
    required this.title,
    this.margin = EdgeInsets.zero,
    required this.onPressed,
  });

  @override
  _AppButtonState createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      onTapDown: (_) {
        _isTapped = true;
        setState(() {});
      },
      onTapUp: (_) {
        _isTapped = false;
        setState(() {});
      },
      child: Container(
        padding: widget.margin,
        decoration: BoxDecoration(
          boxShadow: const [AppShadows.shadow],
          borderRadius: BorderRadius.circular(6),
          color: _isTapped ? AppColors.blue : AppColors.white,
        ),
        child: Center(
          child: Text(
            widget.title,
            style: TextStyle(
              fontSize: 20,
              color: _isTapped ? AppColors.white : AppColors.black,
            ),
          ),
        ),
      ),
    );
  }
}
