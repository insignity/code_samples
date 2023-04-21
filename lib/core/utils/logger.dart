part of 'configuration.dart';

final HybridPrinter hybridPrinter = HybridPrinter(LogfmtPrinter());
final logger = Logger(printer: hybridPrinter);
