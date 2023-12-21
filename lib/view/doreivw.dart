import 'package:doc/view/Appointment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class doreview extends StatelessWidget {
  const doreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xE7ECF8FF),
     appBar:
      AppBar(
        backgroundColor: Colors.white,
        title: Text("mena adel",style: TextStyle(color: Colors.black87),),
      centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black87,),

      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0,right: 5,left: 5,bottom: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/doctor_big_preview.png"),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 chat(text: 'voice call', img: 'assets/icons/Call_box.svg', color:  Color(0x721276C5) ,),
                  chat(text: "vidocall", img: "assets/icons/Video_box.svg", color: Color(0xFF673DE1)),
                  chat(text: "massege", img: "assets/icons/Chat_box.svg", color: Color(0xFFFFB76A))


                ],
              ),
            ),
           Text("Medicaine & Heart spechlist",style: TextStyle(fontSize: 20,color: Colors.black87),)
          , SizedBox(height: 5,)

            ,Text("good helth clinc effbb",style: TextStyle(fontSize: 15,color: Colors.black45),),
           SizedBox(height: 5,),

             Row(

               children: [
                 for(int i=0;i<5;i++)
                 SvgPicture.asset("assets/icons/star.svg"),
               ],
             ),
            SizedBox(height: 15,)
            ,
            Text("About mena",style: TextStyle(fontSize: 20,color: Colors.black87)),
            SizedBox(height: 5,),
            Text("lorem lorm ahmed osama askngdm'adlg'odsgm s;pnaeioolg;hfmjhfkhhfddddhhfxfgjggjjjgjgfhfhhfghgggjg",style: TextStyle(fontSize: 15,color: Colors.black45),),
            Text("lorem lorm ahmed osama askngdm'adlg'odsgm s;pnaeioolg;hfmjhfkhh",style: TextStyle(fontSize: 15,color: Colors.black45),),
            Text("lorem lorm ahmed osama askngdm'adlg'odsgm s;pnaeioolg;hfmjhfkhh",style: TextStyle(fontSize: 15,color: Colors.black45),),
               SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                rev(sd1: 'pediant', sd2: '10.08 k',),
                rev(sd1: "experince", sd2: "8 years"),
                rev(sd1: "reviwe", sd2: "10.09 k")
              ],
            ),
             SizedBox(height: 15,),
             bottom(),


          ],
        ),
      ),

    );
  }
  
}

class chat extends StatelessWidget {
   chat({Key? key,required this.text,required this.img,required this.color}) : super(key: key);
 String img,text;
Color color ;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
      decoration: BoxDecoration(
        color: color,

        borderRadius: BorderRadius.circular(7)
      ),
      child:  Row(
        children: [
          SvgPicture.asset(img),
          SizedBox(width: 10,),
          Text(text,style: TextStyle(fontSize: 12,color: Colors.white),),


        ],
      ),

    );
  }
}

class rev extends StatelessWidget {
   rev({Key? key,required this.sd1,required this.sd2}) : super(key: key);
String sd1,sd2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(sd1,style: TextStyle(fontSize: 15,color: Colors.black54),),
        SizedBox(height:5,),
        Text(sd2,style: TextStyle(fontSize: 24,color: Colors.black87,fontWeight: FontWeight.bold),)
      ],
    );
  }
}
