import 'package:flutter/material.dart';

import '../../../../core/theming/app_theming.dart';
import '../../../../core/utils/configuration.dart';
import '../../../../core/utils/input_formatters.dart';

class CloudNameLoaded extends StatelessWidget {
  final Callback<String> onChangedField;
  final VoidCallback onPressedButton;

  const CloudNameLoaded({
    Key? key,
    required this.onChangedField,
    required this.onPressedButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: AppCorners.r8.border,
        color: AppColors.white,
      ),
      width: 450,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const HBox(24),
          Text(
            context.$.enterCloudName,
            style: context.txt.tm,
            textAlign: TextAlign.center,
          ),
          const HBox(16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90),
            child: TextFormField(
              autofocus: true,
              onChanged: onChangedField,
              onEditingComplete: onPressedButton,
              inputFormatters: [
                InputFormatters.excludeSpace,
                InputFormatters.toLowerCase,
              ],
            ),
          ),
          const HBox(40),
        ],
      ),
    );
  }
}
