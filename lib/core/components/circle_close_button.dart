import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/configuration.dart';

class CircleCloseButton extends StatefulWidget {
  final Color? color;
  final VoidCallback? onPressed;

  const CircleCloseButton({Key? key, this.color, this.onPressed})
      : super(key: key);

  @override
  State<CircleCloseButton> createState() => _CircleCloseButtonState();
}

class _CircleCloseButtonState extends State<CircleCloseButton> {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white60,
          onTap: widget.onPressed ?? () => context.router.pop(),
          child: SvgPicture.asset(
            AppIcons.closeCircle,
            height: 62,
            width: 62,
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
              widget.color ?? Colors.white,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
