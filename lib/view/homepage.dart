import 'package:doc/componen/Btnhomescreen.dart';
import 'package:doc/view/Loginpage.dart';
import 'package:doc/view/RigesterPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../componen/geidView.dart';
class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        SvgPicture.asset("assets/icons/splash_bg.svg",width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,),
         Padding(
           padding: const EdgeInsets.all(19),
           child: Column(

             mainAxisAlignment: MainAxisAlignment.end,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               SvgPicture.asset(
                 "assets/icons/gerda_logo.svg",
               ),
               SizedBox(height: 250,),
               custombtn(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (builder)=>LoginPage())), label: "sing in", color: Color(0xFF6CD8D1),),
               SizedBox(height: 9,),

               custombtn(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (builder)=>RigesterPage())), label: "sing up", color: Colors.transparent,)
             ,SizedBox(height: 50,),

             ],

           ),
         )   

      ],
    );
  }
}
