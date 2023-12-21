part of 'read_register_cubit.dart';

@immutable
abstract class ReadRegisterState {}

class ReadRegisterInitial extends ReadRegisterState {}

class ReadRegisterLoading extends ReadRegisterState {}

class ReadRegisterSucess extends ReadRegisterState {
    List<acc> messages;
  ReadRegisterSucess({required this.messages});
}
