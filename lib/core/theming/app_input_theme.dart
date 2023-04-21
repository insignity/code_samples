part of 'app_theming.dart';

abstract class AppInputTheme {
  static final inputTheme = InputDecorationTheme(
    filled: true,
    fillColor: AppColors.grey1,
    focusColor: AppColors.grey1,
    hoverColor: AppColors.grey1,
    hintStyle: const TextStyle().copyWith(color: AppColors.secondaryText),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
    enabledBorder: StadiumInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColors.grey2),
    ),
    disabledBorder: StadiumInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColors.grey2),
    ),
    focusedBorder: StadiumInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColors.grey2),
    ),
    errorBorder: StadiumInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColors.red),
    ),
    focusedErrorBorder: StadiumInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColors.red),
    ),
  );
}
