import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class Appafter extends StatelessWidget {
  Appafter({Key? key,required this.cit}) : super(key: key);
String cit;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: EdgeInsets.all(9),
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Icon(Icons.arrow_back_ios_new_sharp),
              Column(
                children: [
                  Text("Selected area",style: TextStyle(
                      color: Colors.black54
                      ,fontSize: 12
                  ),),
                  Text(cit,style: TextStyle(
                      color: Colors.black87
                      ,fontSize: 18,fontWeight: FontWeight.bold
                  ),)
                ],
              ),
              SvgPicture.asset("assets/icons/Chat.svg"),
            ],
          ),
        ],
      ),
    );
  }
}
