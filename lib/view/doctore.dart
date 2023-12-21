import 'package:doc/componen/Appbarhome.dart';
import 'package:doc/componen/ava.dart';
import 'package:doc/view/home.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../Model/avadoc.dart';
import '../componen/cc.dart';
import 'Account.dart';
import 'Appointment.dart';
import 'doreivw.dart';
class doc extends StatefulWidget {
   doc({Key? key}) : super(key: key);

  @override
  State<doc> createState() => _docState();
}

class _docState extends State<doc> {
   List <Avadoctore>les=[Avadoctore(dname: 'mena', img: 'assets/images/Serena_Gome.png'),
     Avadoctore(dname: 'mena', img: 'assets/images/Serena_Gome.png',),
     Avadoctore(dname: 'mena', img: 'assets/images/Serena_Gome.png')
     ,Avadoctore(dname: 'mena', img: 'assets/images/Serena_Gome.png')
     ,Avadoctore(dname: 'mena', img: 'assets/images/Serena_Gome.png',),
     Avadoctore(dname: 'mena', img: 'assets/images/Serena_Gome.png')
     ,Avadoctore(dname: 'mena', img: 'assets/images/Serena_Gome.png')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xE5EDF9FF),
     body: Column(


       children: [
              const HomeAppbar(),
         Expanded(
           child: GestureDetector(
             onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (builder)=>doreview())),
             child: GridView.builder(

                    itemCount: les.length,
                    clipBehavior: Clip.none,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return Expanded(child: ss(dname: les[index].dname, img: les[index].img, onTap: (){}));
                    },

             ),
           ),
         ),
       ],
     ),
      bottomNavigationBar:  GNav(

          gap: 9,


          backgroundColor: Colors.white60,
          activeColor: Colors.white,
          tabBackgroundColor: Color(0xFF255ED6),
          padding: EdgeInsets.all(16),
          selectedIndex: 1,
          tabs: [
        GButton(icon: Icons.home,text: "home",onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (builder){return Homeapp();}));
      } ,),
        GButton(icon:Icons.people_alt_rounded,text: "doctore",onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (builder){return doc();}));
        } ,),
        GButton(icon: Icons.event_available_outlined,text: "Appointment",onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (builder){return Appointment();} ));},),
         GButton(icon: Icons.account_circle_outlined,text: "Account", onPressed: () {
           Navigator.push(context,
               MaterialPageRoute(builder: (builder) => Account()));
         },)
        ] ),
    );
  }
}

