part of 'app_theming.dart';

abstract class AppButtonThemes {
  static final elevatedButtonThemeData = ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: const MaterialStatePropertyAll(EdgeInsets.zero),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: AppCorners.r8.border),
      ),
      shadowColor: const MaterialStatePropertyAll(Colors.transparent),
      backgroundColor:
          MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return AppColors.grey2;
        } else {
          return AppColors.blue;
        }
      }),
    ),
  );
  static final outlinedButtonThemeData = OutlinedButtonThemeData(
    style: ButtonStyle(
      padding: const MaterialStatePropertyAll(EdgeInsets.zero),
      side: const MaterialStatePropertyAll(
        BorderSide(color: AppColors.primary),
      ),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: AppCorners.r8.border),
      ),
      backgroundColor:
          MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return AppColors.grey2;
        } else {
          return AppColors.white;
        }
      }),
    ),
  );

  static final textButtonThemeData = TextButtonThemeData(
    style: ButtonStyle(
      padding: const MaterialStatePropertyAll(EdgeInsets.zero),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: AppCorners.r8.border),
      ),
      backgroundColor:
          MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return AppColors.grey2;
        } else {
          return Colors.transparent;
        }
      }),
    ),
  );
}
