import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../view/Account.dart';
import '../view/Appointment.dart';
import '../view/doctore.dart';
class nav extends StatefulWidget {
  nav({Key? key,required this.cur}) : super(key: key);
  int cur;

  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {
  @override
  Widget build(BuildContext context) {
    return GNav(
        selectedIndex: widget.cur!,
        onTabChange: (index){
          setState(() {
            widget.cur!=index;
          });
        },
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
        ])
    ;
  }
}
