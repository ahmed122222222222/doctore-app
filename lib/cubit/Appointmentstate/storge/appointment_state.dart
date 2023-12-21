part of 'appointment_cubit.dart';

@immutable
abstract class AppointmentState {}

class AppointmentInitial extends AppointmentState {}
class Appointmentloading extends AppointmentState{}
class Appintmentsucess extends AppointmentState{}
class Appintmentfaliuer extends AppointmentState{}
