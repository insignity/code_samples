import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/di/service_locator.dart';
import '../../../../core/routing/app_router.dart';
import '../../../../core/services/user/user_service.dart';
import '../../../../core/theming/app_theming.dart';
import '../../../../core/utils/configuration.dart';

class PointTopBar extends StatelessWidget {
  const PointTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = sl<UserService>().user!;
    return Container(
      color: AppColors.white,
      child: Row(
        children: [
          FlutterLogo(),
          CircleAvatar(),
          WBox(16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${user.surname} ${user.name}"),
              Text(user.position),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => context.router.push(const SettingsRouter()),
          ),
          Spacer(),
          ElevatedButton(onPressed: () {}, child: Text("Quick Order"))
        ],
      ),
    );
  }
}
