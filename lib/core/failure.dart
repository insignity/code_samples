// import 'package:equatable/equatable.dart';

abstract class Failure {}

class ServerFailure extends Failure {}

class CacheFailure extends Failure {}

class UserNotFound extends Failure {}

class EmptyOrNullFailure extends Failure {}

class InvalidPasswordFailure extends Failure {}

class NoInternetConnectionFailure extends Failure {}

class NotImplementedFailure extends Failure {
  final String message;

  NotImplementedFailure(this.message);
}
