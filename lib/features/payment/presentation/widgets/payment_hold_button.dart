import 'package:code_samples/core/utils/configuration.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../core/theming/app_theming.dart';

class PaymentHoldButton extends StatefulWidget {
  final VoidCallback onFinish;

  const PaymentHoldButton({Key? key, required this.onFinish}) : super(key: key);

  @override
  State<PaymentHoldButton> createState() => _PaymentHoldButtonState();
}

class _PaymentHoldButtonState extends State<PaymentHoldButton> {
  int value = 0;

  bool _buttonPressed = false;
  bool _loopActive = false;

  Future _increaseCounterWhilePressed() async {
    if (_loopActive) return;
    _loopActive = true;
    while (_buttonPressed && value < 100) {
      value = value + 1;
      setState(() {});
      await Future.delayed(const Duration(milliseconds: 10));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (details) async {
        _buttonPressed = true;
        await _increaseCounterWhilePressed().then((_) {
          if (_loopActive && (value > 100 || value == 100)) {
            widget.onFinish();
          }
        });
      },
      onPointerUp: (details) {
        value = 0;
        _buttonPressed = false;
        _loopActive = false;
        setState(() {});
      },
      child: LayoutBuilder(builder: (context, constraints) {
        return CircularPercentIndicator(
          radius: constraints.maxHeight / 2,
          lineWidth: 10,
          percent: (value / 100).toDouble(),
          center: Container(
            height: constraints.maxHeight - 20,
            width: constraints.maxHeight - 20,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.white,
            ),
            child: Text(
              "Нажмите и удерживайте для подтверждения транзакции",
              style: context.txt.hm,
              textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: Colors.transparent,
          curve: Curves.ease,
          progressColor: AppColors.green,
        );
      }),
    );
  }
}
