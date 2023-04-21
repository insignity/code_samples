import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theming/app_theming.dart';
import '../utils/configuration.dart';

class AppDatePicker extends StatefulWidget {
  final DateTime value;
  final Callback<DateTime> onDateTimeChanged;

  const AppDatePicker({
    Key? key,
    required this.value,
    required this.onDateTimeChanged,
  }) : super(key: key);

  @override
  State<AppDatePicker> createState() => _AppDatePickerState();
}

class _AppDatePickerState extends State<AppDatePicker> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration().copyWith(
          hintText: widget.value.toDateString,
          suffix: SvgPicture.asset(AppIcons.notepad)),
      readOnly: true,
      onTap: () => showCupertinoDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return Center(
            child: Container(
              height: 300,
              width: 400,
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: AppCorners.r8.border,
                  color: AppColors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Expanded(
                        child: CupertinoDatePicker(
                          initialDateTime: widget.value,
                          minimumDate: DateTime(2023),
                          maximumDate: DateTime.now(),
                          onDateTimeChanged: (changed) {
                            date = changed;
                          },
                          mode: CupertinoDatePickerMode.date,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed: context.router.pop,
                              child: Text('Отмена'),
                            ),
                          ),
                          const WBox(16),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                widget.onDateTimeChanged(date);
                                context.router.pop();
                              },
                              child: Text('Ok'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
