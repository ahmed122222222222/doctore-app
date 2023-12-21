part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoadingLOgin extends LoginState {}

class sucessLogin extends LoginState {}

class fauilerLogin extends LoginState {
  String ?loginerr;
  fauilerLogin({required this.loginerr});
}
