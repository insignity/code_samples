import 'dart:math' as math;

import 'package:flutter/material.dart';

class RotatedContainer extends StatelessWidget {
  final Decoration? decoration;
  final double? height;
  final double? width;
  final int angle;
  final Widget? child;
  final bool needRotation;

  const RotatedContainer({
    Key? key,
    this.needRotation = true,
    this.angle = 0,
    this.child,
    required this.decoration,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (angle != 0) {
      return Transform.rotate(
        angle: angle * math.pi / 180,
        child: Container(
          decoration: decoration,
          height: height,
          width: width,
          child: child == null
              ? null
              : Transform.rotate(angle: -angle * math.pi / 180, child: child),
        ),
      );
    } else {
      return Container(
        decoration: decoration,
        height: height,
        width: width,
        child: child,
      );
    }
  }
}
