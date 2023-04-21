part of 'configuration.dart';

const String _scheme = "http://";
const String _host = "16.16.54.89";
const String _port = ":8000";

abstract class Constants {
  static String get path => _scheme + _host + _port;
  static const String currency = 'тг';
}
