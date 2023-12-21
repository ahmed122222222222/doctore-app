import 'package:doc/view/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:35,left: 15,right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween
        ,
        children: [
          Column(
            children: const [
              Text("find you ",style: TextStyle(fontSize: 20),)
              ,Text("Spishlist",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            ],
          
          ),
    
          Padding(
            padding: const EdgeInsets.only(top:26,left: 15,right: 15),
            child: Row(
              children:  [
               GestureDetector(
            onTap:()=>Navigator.push(context, MaterialPageRoute(builder: (builder)=>Search())),
                   child: SvgPicture.asset("assets/icons/Serach.svg"))
                ,SizedBox(width: 15,)
                , SvgPicture.asset("assets/icons/Chat.svg")
              ],
            ),
          )
    
    
        ],
      ),
    );
  }
}