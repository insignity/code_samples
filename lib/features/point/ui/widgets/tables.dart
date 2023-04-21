import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/rotated_container.dart';
import '../../../../core/routing/app_router.dart';
import '../../../../core/theming/app_theming.dart';
import '../../../../entities/entities.dart';

class Tables extends StatelessWidget {
  final List<TableEntity> tables;
  final int hallSize;

  const Tables({
    Key? key,
    required this.tables,
    required this.hallSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        final cell = constraints.maxWidth.toDouble() / hallSize;
        return Container(
          constraints: constraints,
          child: Stack(
            children: [
              for (var table in tables)
                createTable(context, table: table, cell: cell)
            ],
          ),
        );
      },
    );
  }

  Positioned createTable(
    BuildContext context, {
    required TableEntity table,
    required double cell,
  }) {
    final positionedLeft = table.point.x * cell;
    final positionedBottom = table.point.y * cell;
    final tableColor =
        table.orders.isEmpty ? AppColors.white : AppColors.primary;
    final textColor = table.orders.isEmpty ? AppColors.black : AppColors.white;
    final child = FittedBox(
      child:
          Text(table.name, style: const TextStyle().copyWith(color: textColor)),
    );

    onTap() => context.router.push(
          OrderRoute(
            id: table.id,
            table: table,
          ),
        );

    if (table.type == TableType.rectangle) {
      return Positioned(
        left: positionedLeft,
        bottom: positionedBottom,
        child: GestureDetector(
          onTap: onTap,
          child: RotatedContainer(
            angle: table.angle,
            decoration: BoxDecoration(
              color: tableColor,
              boxShadow: const [AppShadows.shadow],
            ),
            height: table.height * cell,
            width: table.width * cell,
            child: child,
          ),
        ),
      );
    } else {
      return Positioned(
        left: positionedLeft - table.height,
        bottom: positionedBottom - table.height,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: tableColor,
              shape: BoxShape.circle,
            ),
            height: table.height * cell * 2,
            width: table.width * cell * 2,
            child: child,
          ),
        ),
      );
    }
  }
}
