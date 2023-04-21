import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../di/service_locator.dart';
import '../routing/app_router.dart';
import '../services/user/user_service.dart';
import '../theming/app_theming.dart';
import '../utils/configuration.dart';

class AppHeader extends StatefulWidget with PreferredSizeWidget {
  final String? title;
  final Widget? trailing;

  const AppHeader({Key? key, this.title, this.trailing}) : super(key: key);

  @override
  State<AppHeader> createState() => _AppHeaderState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppHeaderState extends State<AppHeader> {
  final user = sl<UserService>().user;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.14),
            offset: Offset(0, 2),
            blurRadius: 7,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: FlutterLogo(),
                ),
                const CircleAvatar(),
                const WBox(16),
                if (user != null)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${user!.surname} ${user!.name}"),
                      Text(user!.position),
                    ],
                  ),
                IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () => context.router.push(const SettingsRouter()),
                ),
              ],
            ),
          ),
          if (widget.title != null)
            Text(widget.title!, style: context.txt.headlineSmall),
          if (widget.trailing != null) Expanded(child: widget.trailing!),
        ],
      ),
    );
  }
}
