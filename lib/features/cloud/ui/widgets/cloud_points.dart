import 'package:flutter/material.dart';

import '../../../../core/theming/app_theming.dart';
import '../../../../core/utils/configuration.dart';
import '../../domain/entities/cloud_entities.dart';

class CloudPoints extends StatelessWidget {
  final Callback<PointDescriptionEntity> onTap;
  final List<PointDescriptionEntity> points;

  const CloudPoints({Key? key, required this.points, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            'Выберите место реализации',
            style: context.txt.hs! + AppColors.white,
          ),
        ),
        Expanded(
          child: Center(
            child: Wrap(
              spacing: 40,
              runSpacing: 40,
              children: [
                for (var point in points)
                  GestureDetector(
                    onTap: () => onTap(point),
                    child: _CloudPoint(point: point),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _CloudPoint extends StatelessWidget {
  final PointDescriptionEntity point;

  const _CloudPoint({Key? key, required this.point}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            offset: Offset(0, 4),
            blurRadius: 20,
          ),
        ],
        color: AppColors.white,
      ),
      width: 240,
      height: 220,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(point.name),
          const HBox(8),
          Text(point.city),
          const HBox(8),
          Text(point.adress),
        ],
      ),
    );
  }
}
