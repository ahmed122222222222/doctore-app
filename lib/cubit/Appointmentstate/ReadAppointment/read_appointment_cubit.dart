import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doc/Model/Appointment.dart';
import 'package:doc/view/Appointment.dart';
import 'package:meta/meta.dart';

part 'read_appointment_state.dart';

class ReadAppointmentCubit extends Cubit<ReadAppointmentState> {
  ReadAppointmentCubit() : super(ReadAppointmentInitial());
  getmass() {
    CollectionReference messages =
    FirebaseFirestore.instance.collection("Appointment");
    messages.orderBy("time", descending: true).snapshots().listen((event) {
      List<Appointmentmodel> messagesList=[];

      for (var doc in event.docs) {
        messagesList.add(Appointmentmodel.fromJson(doc));
      }
      print(messagesList.isEmpty);


      emit(ReadAppointmentSucess(messages: messagesList));
    });

  }

}

