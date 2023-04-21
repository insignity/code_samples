import 'package:flutter/services.dart';

abstract class InputFormatters {
  static final FilteringTextInputFormatter excludeSpace =
      FilteringTextInputFormatter.deny(RegExp(r'\s'));

  static final FilteringTextInputFormatter lowerCase =
      FilteringTextInputFormatter.deny(RegExp(r'[A-Z]'));

  static final FilteringTextInputFormatter numbers =
      FilteringTextInputFormatter.allow(RegExp(r'[0-9]'));

  static final LowercaseInputFormatter toLowerCase = LowercaseInputFormatter();
}

class LowercaseInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toLowerCase(),
      selection: newValue.selection,
    );
  }
}
