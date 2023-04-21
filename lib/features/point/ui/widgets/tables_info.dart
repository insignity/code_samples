import 'package:flutter/material.dart';

import '/core/utils/configuration.dart';
import '../../../../core/theming/app_theming.dart';
import '../../../../entities/entities.dart';

class TablesInfo extends StatelessWidget {
  final List<TableEntity> tables;

  const TablesInfo({Key? key, required this.tables}) : super(key: key);

  int get guestsCount {
    int count = 0;
    for (final table in tables) {
      count += table.orders.length;
    }
    return count;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 25, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Всего занятых столов: ${tables.length}",
                  style: context.txt.tl! + AppColors.firstText,
                ),
                const HBox(3),
                Text(
                  "Всего гостей: $guestsCount",
                  style: context.txt.bl! + AppColors.secondaryText,
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: ListView.separated(
              itemCount: tables.length,
              separatorBuilder: (_, index) => const Divider(),
              itemBuilder: (_, index) {
                return ListTile(title: Text(tables[index].name));
              },
            ),
          ),
        ],
      ),
    );
  }
}
