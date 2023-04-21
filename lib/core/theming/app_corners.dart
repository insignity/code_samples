part of 'app_theming.dart';

class Corner {
  final double value;
  final BorderRadius border;
  final Radius radius;

  const Corner({
    required this.value,
    required this.border,
    required this.radius,
  });
}

abstract class AppCorners {
  static const Corner r4 = Corner(
    value: 4,
    border: BorderRadius.all(Radius.circular(4)),
    radius: Radius.circular(4),
  );
  static const Corner r8 = Corner(
    value: 8,
    border: BorderRadius.all(Radius.circular(8)),
    radius: Radius.circular(8),
  );

  static const Corner r10 = Corner(
    value: 10,
    border: BorderRadius.all(Radius.circular(10)),
    radius: Radius.circular(10),
  );

  static const Corner r12 = Corner(
    value: 12,
    border: BorderRadius.all(Radius.circular(12)),
    radius: Radius.circular(12),
  );

  static const Corner r20 = Corner(
    value: 20,
    border: BorderRadius.all(Radius.circular(20)),
    radius: Radius.circular(20),
  );

  static const Corner r24 = Corner(
    value: 24,
    border: BorderRadius.all(Radius.circular(24)),
    radius: Radius.circular(24),
  );
}
