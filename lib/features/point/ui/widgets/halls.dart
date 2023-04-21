import 'package:flutter/material.dart';

import '../../../../core/di/service_locator.dart';
import '../../../../core/theming/app_theming.dart';
import '../../../../core/utils/configuration.dart';
import '../../../../entities/entities.dart';
import '../bloc/point_bloc.dart';

class Halls extends StatelessWidget {
  final List<HallEntity> halls;
  final HallEntity activeHall;

  const Halls({
    Key? key,
    required this.halls,
    required this.activeHall,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = sl<PointBloc>();
    return SizedBox(
      width: 90,
      child: ListView.separated(
        separatorBuilder: (_, index) {
          return const HBox(30);
        },
        itemBuilder: (_, index) {
          return _Hall(
            hall: halls.elementAt(index),
            isActive: halls[index] == activeHall,
            onTap: () {
              bloc.add(PointEvent.setHallIndex(index));
            },
          );
        },
        itemCount: halls.length,
      ),
    );
  }
}

class _Hall extends StatelessWidget {
  final HallEntity hall;
  final bool isActive;
  final VoidCallback onTap;

  const _Hall({
    Key? key,
    required this.hall,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? context.theme.primaryColor : AppColors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: const [AppShadows.shadow],
        ),
        width: 90,
        height: 90,
        child: Center(
          child: Text(
            hall.name,
            style: context.txt.bodyLarge!.copyWith(
              color: isActive ? AppColors.white : null,
            ),
          ),
        ),
      ),
    );
  }
}
