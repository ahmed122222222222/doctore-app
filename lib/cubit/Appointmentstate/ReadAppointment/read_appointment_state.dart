part of 'read_appointment_cubit.dart';

@immutable
abstract class ReadAppointmentState {}

class ReadAppointmentInitial extends ReadAppointmentState {}
class ReadAppointmentLoading extends ReadAppointmentState{}
class ReadAppointmentSucess extends ReadAppointmentState{
  List<Appointmentmodel> messages;
  ReadAppointmentSucess({required this.messages});
}
class ReadAppointmentfaliuer extends ReadAppointmentState{}  
