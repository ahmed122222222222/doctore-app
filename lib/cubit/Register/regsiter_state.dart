part of 'regsiter_cubit.dart';

@immutable
abstract class RegsiterState {}

class RegsiterInitial extends RegsiterState {}

class LoadingRegister extends RegsiterState {}

class sucessRegister extends RegsiterState {}

class faulierRegister extends RegsiterState {
  String errmass;
  faulierRegister( {required String this.errmass});
}
