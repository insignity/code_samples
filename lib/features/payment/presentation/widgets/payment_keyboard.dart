import 'package:flutter/material.dart';

import '../../../../core/components/circle_button.dart';
import '../../../../core/theming/app_theming.dart';
import '../../../../core/utils/configuration.dart';

class PaymentKeyboard extends StatefulWidget {
  final VoidCallback onPressedOne;
  final VoidCallback onPressedTwo;
  final VoidCallback onPressedThree;
  final VoidCallback onPressedFour;
  final VoidCallback onPressedFive;
  final VoidCallback onPressedSix;
  final VoidCallback onPressedSeven;
  final VoidCallback onPressedEight;
  final VoidCallback onPressedNine;
  final VoidCallback onPressedZero;
  final VoidCallback onPressedDot;
  final VoidCallback onPressedDelete;

  const PaymentKeyboard({
    Key? key,
    required this.onPressedOne,
    required this.onPressedTwo,
    required this.onPressedThree,
    required this.onPressedFour,
    required this.onPressedFive,
    required this.onPressedSix,
    required this.onPressedSeven,
    required this.onPressedEight,
    required this.onPressedNine,
    required this.onPressedZero,
    required this.onPressedDot,
    required this.onPressedDelete,
  }) : super(key: key);

  @override
  State<PaymentKeyboard> createState() => _PaymentKeyboardState();
}

class _PaymentKeyboardState extends State<PaymentKeyboard> {
  TextStyle textStyle = const TextStyle(
    color: AppColors.primary,
    fontSize: 42,
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleButton(
              onPressed: widget.onPressedOne,
              child: Text('1', style: textStyle),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CircleButton(
                onPressed: widget.onPressedTwo,
                child: Text('2', style: textStyle),
              ),
            ),
            CircleButton(
              onPressed: widget.onPressedThree,
              child: Text('3', style: textStyle),
            ),
          ],
        ),
        const HBox(16),
        Row(
          children: [
            CircleButton(
              onPressed: widget.onPressedFour,
              child: Text('4', style: textStyle),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CircleButton(
                onPressed: widget.onPressedFive,
                child: Text('5', style: textStyle),
              ),
            ),
            CircleButton(
              onPressed: widget.onPressedSix,
              child: Text('6', style: textStyle),
            ),
          ],
        ),
        const HBox(16),
        Row(
          children: [
            CircleButton(
              onPressed: widget.onPressedSeven,
              child: Text('7', style: textStyle),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CircleButton(
                onPressed: widget.onPressedEight,
                child: Text('8', style: textStyle),
              ),
            ),
            CircleButton(
              onPressed: widget.onPressedNine,
              child: Text('9', style: textStyle),
            ),
          ],
        ),
        const HBox(16),
        Row(
          children: [
            CircleButton(
              onPressed: widget.onPressedDot,
              child: Text('.', style: textStyle),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CircleButton(
                onPressed: widget.onPressedZero,
                child: Text('0', style: textStyle),
              ),
            ),
            CircleButton(
              onPressed: widget.onPressedDelete,
              child: const Icon(
                Icons.delete_forever_rounded,
                color: AppColors.primary,
                size: 32,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
