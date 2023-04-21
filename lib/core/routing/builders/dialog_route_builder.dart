import 'package:flutter/material.dart';

import '../../components/app_back_button.dart';
import '../../theming/app_theming.dart';

PageRouteBuilder<T> dialogRouteBuilder<T>(Widget child,
    [RouteSettings? settings]) {
  return PageRouteBuilder(
    opaque: false,
    settings: settings,
    barrierDismissible: true,
    transitionDuration: const Duration(milliseconds: 100),
    reverseTransitionDuration: const Duration(milliseconds: 100),
    barrierColor: AppColors.primary,
    pageBuilder: (_, __, ___) => _DialogContainer(child: child),
  );
}

class _DialogContainer extends StatelessWidget {
  final Widget child;

  const _DialogContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 40),
              child: AppBackButton(color: AppColors.white),
            ),
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Material(
                    color: AppColors.white,
                    clipBehavior: Clip.hardEdge,
                    borderRadius: AppCorners.r10.border,
                    child: Theme(
                      data: AppTheming.ipad,
                      child: ConstrainedBox(
                        constraints:
                            const BoxConstraints(maxWidth: 800, maxHeight: 600),
                        child: child,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
