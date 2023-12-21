import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:doc/Model/Appointment.dart';
import 'package:doc/componen/selecttext.dart';
import 'package:doc/cubit/Appointmentstate/ReadAppointment/read_appointment_cubit.dart';
import 'package:doc/cubit/Appointmentstate/storge/appointment_cubit.dart';
import 'package:doc/view/doctore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:intl/intl.dart';

import '../componen/ro.dart';
import 'Account.dart';
import 'home.dart';

class Appointment extends StatefulWidget {
  Appointment({Key? key}) : super(key: key);

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  DateTime now = DateTime.now();
  Color? col = Colors.grey;
  DateTime? s;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xE7ECF8FF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "appointment",
          style: TextStyle(fontSize: 24, color: Colors.black87),
        ),
      ),
      body: BlocConsumer<ReadAppointmentCubit, ReadAppointmentState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          if (state is ReadAppointmentLoading) {
            return const CircularProgressIndicator();
          }
          else if(state is ReadAppointmentfaliuer)
        {  return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "${DateFormat('MMMM').format(now)}",
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: DatePicker(
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Color(0xFF255ED6),
                  selectedTextColor: Colors.white,
                  onDateChange: (date) {
                    // New date selected
                    setState(() {
                      s = date;
                    });
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "solot",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const ro(),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      BlocProvider.of<AppointmentCubit>(context)
                          .storageAppointmen(
                              date: s,
                              time: BlocProvider.of<AppointmentCubit>(context)
                                  .time);
                    },
                    child: bottom(),
                  ),
                ),
              ),
            ],
          );}
          else if(state is ReadAppointmentSucess)
          {
           List <Appointmentmodel>messagesList = state.messages;
            return Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 170,
              padding: EdgeInsets.all(9),

              color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(

                          children: [

                            Text("date"),
                            Text(messagesList[1].date.toString().substring(0,10))

                          ],
                        ),
                        Column(
                          children: [

                            Text("time"),
                            Text(messagesList[1].time.toString())
                          ],
                        ),
                        Column(
                          children: [

                            Text("place"),
                            Text(cityname!)
                          ],
                        ),

                      ],
                    ),
                   SizedBox(height: 50,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [

                            Text("date"),
                            Text("10-12-1202")
                          ],
                        ),
                        Column(
                          children: [

                            Text("date"),
                            Text("10-12-012")
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.red), // Set background color
                            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(16.0)), // Set padding
                            textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 16)), // Set font size
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))), // Set rounded corners
                          ),
                          child: Text('Cansel',style: TextStyle(color:Colors.white),), // Set button text
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }
          else{
             BlocProvider.of<ReadAppointmentCubit>(context).getmass();
            return Text("data");
          }


        },

      ),
      bottomNavigationBar: GNav(
          gap: 9,
          backgroundColor: Colors.white60,
          activeColor: Colors.white,
          tabBackgroundColor: Color(0xFF255ED6),
          padding: EdgeInsets.all(16),
          selectedIndex: 2,
          tabs: [
            GButton(
              icon: Icons.home,
              text: "home",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (builder) {
                  return Homeapp();
                }));
              },
            ),
            GButton(
              icon: Icons.people_alt_rounded,
              text: "doctore",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (builder) {
                  return doc();
                }));
              },
            ),
            GButton(
              icon: Icons.event_available_outlined,
              text: "Appointment",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (builder) {
                  return Appointment();
                }));
              },
            ),
             GButton(
              icon: Icons.account_circle_outlined,
              text: "Account",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => Account()));
              },

            )
          ]),
    );
  }
}

class bottom extends StatelessWidget {
  const bottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Center(
        child: Text(
          "Coinfor mappomentment",
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      decoration: BoxDecoration(
          color: Color(0xFF255ED6),
          borderRadius: BorderRadius.circular(9)),
      width: MediaQuery.of(context).size.width,
      height: 60,
    );
  }
}
