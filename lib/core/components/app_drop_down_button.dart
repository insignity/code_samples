import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theming/app_theming.dart';
import '../utils/configuration.dart';

typedef StringCallback = Function(String?);

class AppDropDownButton extends StatefulWidget {
  final List<String> list;
  final String? value;
  final StringCallback onChange;

  const AppDropDownButton({
    super.key,
    required this.list,
    required this.value,
    required this.onChange,
  });

  @override
  State<AppDropDownButton> createState() => _AppDropDownButtonState();
}

class _AppDropDownButtonState extends State<AppDropDownButton> {
  Decoration decoration = BoxDecoration(
    color: AppColors.grey1,
    borderRadius: AppCorners.r8.border,
    border: Border.all(color: AppColors.grey2),
  );

  DropdownStyleData dropdownStyleData = DropdownStyleData(
    decoration: BoxDecoration(
      borderRadius: AppCorners.r8.border,
      boxShadow: const [AppShadows.shadow],
    ),
    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
    offset: const Offset(0, -6),
    elevation: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          isExpanded: true,
          value: widget.value,
          onChanged: widget.onChange,
          dropdownStyleData: dropdownStyleData,
          iconStyleData: IconStyleData(
            icon: SvgPicture.asset(AppIcons.arrowDown),
          ),
          items: widget.list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value, style: context.txt.bs),
            );
          }).toList(),
          selectedItemBuilder: (_) {
            return widget.list.map<Widget>((String item) {
              return Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  item,
                  style: context.txt.bm! + AppColors.secondaryText,
                ),
              );
            }).toList();
          },
        ),
      ),
    );
  }
}
