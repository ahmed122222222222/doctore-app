import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

import '../../../Model/Appointment.dart';
import '../../../Model/account.dart';

part 'read_register_state.dart';

class ReadRegisterCubit extends Cubit<ReadRegisterState> {
  ReadRegisterCubit() : super(ReadRegisterInitial());
   getmass() {
    CollectionReference messages =
    FirebaseFirestore.instance.collection("users");
    messages.snapshots().listen((event) {
      List<acc> messagesList=[];

      for (var doc in event.docs) {
        messagesList.add(acc.fromjason(doc));
      }
      print(messagesList.isEmpty);


      emit(ReadRegisterSucess(messages: messagesList));
    });

  }

}



