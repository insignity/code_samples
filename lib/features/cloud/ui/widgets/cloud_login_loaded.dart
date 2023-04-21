import 'package:flutter/material.dart';

import '../../../../core/theming/app_theming.dart';
import '../../../../core/utils/configuration.dart';
import '../../../../core/utils/input_formatters.dart';

class CloudLoginLoaded extends StatefulWidget {
  final Callback<String> onChangedLogin;
  final Callback<String> onChangedPassword;
  final VoidCallback onPressedButton;

  const CloudLoginLoaded({
    Key? key,
    required this.onPressedButton,
    required this.onChangedLogin,
    required this.onChangedPassword,
  }) : super(key: key);

  @override
  State<CloudLoginLoaded> createState() => _CloudLoginLoadedState();
}

class _CloudLoginLoadedState extends State<CloudLoginLoaded> {
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      padding: const EdgeInsets.symmetric(horizontal: 90),
      decoration: BoxDecoration(
        borderRadius: AppCorners.r8.border,
        color: AppColors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const HBox(24),
          Text("Войти", style: context.txt.tm, textAlign: TextAlign.center),
          const HBox(16),
          Text(context.$.Login, style: context.txt.tm),
          const HBox(8),
          TextFormField(
            autofocus: true,
            onChanged: widget.onChangedLogin,
            inputFormatters: [
              InputFormatters.excludeSpace,
              InputFormatters.toLowerCase,
            ],
            onEditingComplete: focusNode.requestFocus,
          ),
          const HBox(16),
          Text("Пароль", style: context.txt.tm),
          const HBox(8),
          TextFormField(
            focusNode: focusNode,
            onChanged: widget.onChangedPassword,
            obscureText: true,
            inputFormatters: [InputFormatters.excludeSpace],
            onEditingComplete: widget.onPressedButton,
          ),
          const HBox(40),
        ],
      ),
    );
  }
}
