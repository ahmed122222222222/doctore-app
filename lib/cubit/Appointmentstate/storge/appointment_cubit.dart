import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

part 'appointment_state.dart';

class AppointmentCubit extends Cubit<AppointmentState> {
  AppointmentCubit() : super(AppointmentInitial());
  String ?time;
  Future<void> storageAppointmen({required date,  time}) async {
    emit(Appointmentloading());
    try {
      await FirebaseFirestore.instance
          .collection('Appointment')
          .add({"date": date, "time": time});
      emit(Appintmentsucess());
    } catch (ex) {
      emit(Appintmentfaliuer());
    }
  }
}
