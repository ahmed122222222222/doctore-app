import 'package:doc/Model/account.dart';
import 'package:doc/cubit/Appointmentstate/ReadAppointment/read_appointment_cubit.dart';
import 'package:doc/cubit/Appointmentstate/storge/appointment_cubit.dart';
import 'package:doc/cubit/Register/Readuser/read_register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Appointment.dart';
import 'Setting.dart';
import 'doctore.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "profile",
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.black87,
        ),
        actions: [
          GestureDetector(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (builder)=>se())),
            child: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/user_pic.png"),
          ),
          SizedBox(height: 15,),
          AccontDetalise(),
          AccontDetalise(),
          AccontDetalise()
        ],
      ),
      bottomNavigationBar: GNav(
        selectedIndex: 3,
          gap: 9,
          backgroundColor: Colors.white60,
          activeColor: Colors.white,
          tabBackgroundColor: Color(0xFF255ED6),
          padding: EdgeInsets.all(16),
          tabs: [
            GButton(
              icon: Icons.home,
              text: "home",
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => Appointment()));
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

class AccontDetalise extends StatelessWidget {
  AccontDetalise({Key? key}) : super(key: key);
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<acc>? lesoo;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          color: Colors.white,
          child: BlocListener<ReadRegisterCubit,ReadRegisterState>(
            listener: (context, state) {
              BlocProvider.of<ReadRegisterCubit>(context).getmass();
              if(state is ReadRegisterSucess)
                {
 lesoo=state.messages;

                }
            },
            child: TextField(
                readOnly: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2),
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                    color: Colors.white,
                  ),
                )),
                controller: TextEditingController(text: "walaa")),
          )),
    );
  }
}
