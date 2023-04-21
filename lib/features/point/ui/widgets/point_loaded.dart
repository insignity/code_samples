import 'package:flutter/material.dart';

import '../../../../entities/entities.dart';
import 'halls.dart';
import 'tables.dart';
import 'tables_info.dart';

class PointLoaded extends StatelessWidget {
  final PointEntity point;
  final int activeHallIndex;

  const PointLoaded({
    Key? key,
    required this.point,
    required this.activeHallIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 60,
                ),
                child: Halls(
                  halls: point.halls,
                  activeHall: point.halls[activeHallIndex],
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(top: 60, left: 10, right: 50),
                  child: Tables(
                    tables: point.halls[activeHallIndex].tables,
                    hallSize: point.halls[activeHallIndex].size,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TablesInfo(tables: point.halls[activeHallIndex].tables),
              ),
            ],
          ),
        )
      ],
    );
  }
}
