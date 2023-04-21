part of 'configuration.dart';

extension ContextExtensions on BuildContext {
  AppLocalizations get $ => AppLocalizations.of(this);

  TextTheme get txt =>
      Theme
          .of(this)
          .textTheme;
}

extension ThemeDataExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
}

extension StringExtensions on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
}

extension ListExtensions on List? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
}

extension AppTextThemeExtension on TextTheme {
  TextStyle? get dl => displayLarge;

  TextStyle? get dm => displayMedium;

  TextStyle? get ds => displaySmall;

  TextStyle? get hl => headlineLarge;

  TextStyle? get hm => headlineMedium;

  TextStyle? get hs => headlineSmall;

  TextStyle? get tl => titleLarge;

  TextStyle? get tm => titleMedium;

  TextStyle? get ts => titleSmall;

  TextStyle? get ll => labelLarge;

  TextStyle? get lm => labelMedium;

  TextStyle? get ls => labelSmall;

  TextStyle? get bl => bodyLarge;

  TextStyle? get bm => bodyMedium;

  TextStyle? get bs => bodySmall;
}

extension AppTextStyleExtension on TextStyle {
  TextStyle get bold {
    return copyWith(fontWeight: FontWeight.w700);
  }

  TextStyle get semiBold {
    return copyWith(fontWeight: FontWeight.w600);
  }

  TextStyle get regular {
    return copyWith(fontWeight: FontWeight.w400);
  }

  TextStyle get medium {
    return copyWith(fontWeight: FontWeight.w500);
  }

  TextStyle size(double size) {
    return copyWith(fontSize: size);
  }

  TextStyle weight(FontWeight weight) {
    return copyWith(fontWeight: weight);
  }

  TextStyle fontStyle(FontStyle fontStyle) {
    return copyWith(fontStyle: fontStyle);
  }

  TextStyle operator +(Color? color) {
    return copyWith(color: color);
  }
}

extension DateTimeToDateString on DateTime {
  String get toDateString {
    return DateFormat('yyyy-MM-dd').format(this);
  }
}
