import 'package:flutter/material.dart';

import '../failure.dart';
import '../utils/configuration.dart';

class FailureHandler extends StatelessWidget {
  final Failure failure;
  final VoidCallback onPressed;

  const FailureHandler({
    Key? key,
    required this.failure,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(text, textAlign: TextAlign.center),
          const HBox(16),
          ElevatedButton(
            onPressed: onPressed,
            child: const Text("Попробовать снова"),
          )
        ],
      ),
    );
  }

  String get text {
    if (failure is NoInternetConnectionFailure) {
      return "Нет интернет соединения, проверьте пожалуйста интернет";
    } else if (failure is NotImplementedFailure) {
      return (failure as NotImplementedFailure).message;
    } else {
      return "Ой что-то пошло не так";
    }
  }
}
