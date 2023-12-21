import 'package:doc/componen/Rowitem.dart';
import 'package:doc/componen/geidView.dart';
import 'package:doc/view/Account.dart';
import 'package:doc/view/Appointment.dart';
import 'package:doc/view/doctore.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../componen/Appbarhome.dart';
import '../componen/CUSTOMSLIDER.dart';

import '../componen/category.dart';

class Homeapp extends StatefulWidget {
  Homeapp({Key ?key}) : super(key: key);

  @override
  State<Homeapp> createState() => _HomeappState();
}

class _HomeappState extends State<Homeapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xE5EDF9FF),
      body: Column(
        children: [
          HomeAppbar(),
          Customsilde(),
          RowItem(
            s1: 'categorise',
          ),
          Catogry(),
          RowItem(
            s1: 'avalibel doctore',
          ),
          AvaDoctore(),
        ],
      ),
      bottomNavigationBar: GNav(
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
