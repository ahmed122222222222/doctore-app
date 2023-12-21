import 'package:cloud_firestore/cloud_firestore.dart';

class Appointmentmodel {

  String? time;
  DateTime? date;

  Appointmentmodel({

    this.time,
    this.date,
  });

  factory Appointmentmodel.fromJson( json) {
    Timestamp timestamp = json['date']; // استبدال "date" بمفتاح الوقت الخاص بك في JSON
    DateTime dateTime = timestamp.toDate();
    return Appointmentmodel(

      time: json['time'],
      date: dateTime,
    );
  }
}
