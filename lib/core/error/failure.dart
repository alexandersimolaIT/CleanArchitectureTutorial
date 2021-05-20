import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  // If the subclasses have some properties, they'll get passed to this constructor
  // so that Equatable can perform value comparison.
  Failure([List properties = const <dynamic>[]]) : super(properties);
}

// General failures
// use 'extends' instead of 'implements' to make the classes Equatable (since Failure extends Equatable)
class ServerFailure extends Failure {}

class CacheFailure extends Failure {}