import 'package:flutter/material.dart';

import '/core/utils/configuration.dart';
import '../../../../core/theming/app_theming.dart';

class GuestCounter extends StatefulWidget {
  final int? guestsCount;

  const GuestCounter({Key? key, this.guestsCount}) : super(key: key);

  @override
  State<GuestCounter> createState() => _GuestCounterState();
}

class _GuestCounterState extends State<GuestCounter> {
  int guestsCount = 1;

  @override
  void initState() {
    if (widget.guestsCount != null) guestsCount = widget.guestsCount!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47,
      child: Row(
        children: [
          Material(
            color: AppColors.white,
            child: InkWell(
              onTap: () {
                if (guestsCount > 1) {
                  guestsCount--;
                  setState(() {});
                }
              },
              child: SizedBox(
                width: 55,
                child: Center(child: Text('-', style: context.txt.bl)),
              ),
            ),
          ),
          const VerticalDivider(width: 1),
          Expanded(
            child: Center(
              child: Text('Гостей: $guestsCount', style: context.txt.bl),
            ),
          ),
          const VerticalDivider(width: 1),
          Material(
            color: AppColors.white,
            child: InkWell(
              onTap: () {
                guestsCount++;
                setState(() {});
              },
              child: SizedBox(
                width: 55,
                child: Center(child: Text('+', style: context.txt.bl)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
