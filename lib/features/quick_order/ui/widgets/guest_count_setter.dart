import 'package:flutter/material.dart';

import '../../../../core/theming/app_theming.dart';
import '../../../../core/utils/configuration.dart';

class GuestCountSetter extends StatefulWidget {
  final Callback<int> onPressed;

  const GuestCountSetter({Key? key, required this.onPressed}) : super(key: key);

  @override
  State<GuestCountSetter> createState() => _GuestCountSetterState();
}

class _GuestCountSetterState extends State<GuestCountSetter> {
  int guestCount = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 24, bottom: 18),
          color: AppColors.grey2,
          alignment: Alignment.center,
          child: const Text('Укажите количество гостей'),
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (_, index) {
              return GestureDetector(
                onTap: () {
                  guestCount = index + 1;
                  setState(() {});
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  alignment: Alignment.center,
                  color: guestCount == index + 1
                      ? AppColors.grey2
                      : AppColors.white,
                  child: Text('Гость ${index + 1}', style: context.txt.tl),
                ),
              );
            },
            separatorBuilder: (_, index) => const Divider(height: 1),
            itemCount: 10,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 16),
          child: ElevatedButton(
            onPressed: () => widget.onPressed(guestCount),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Открыть заказ',
                style: context.txt.hs! + AppColors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
