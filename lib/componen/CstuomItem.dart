import 'package:flutter/material.dart';
class Customitem extends StatelessWidget {
   Customitem({super.key,required this.dname,required this.depertname,required this.hosbtail,required this.img});
String ?dname,depertname,hosbtail,img;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,left: 15),
      child: Container(
        height: 100,


        padding: const EdgeInsets.only(left: 20,right: 20,top: 7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),color: Color(0xFF255ED6),
        ),
        child: Stack(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                 Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        const Text("looking for you desire ",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold,))
                        , const Text("Spishlist dector",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
                        const Spacer(flex: 1,),
                        Row(
                          children: [
                            VerticalDivider(color: Colors.lightGreen,
                              thickness: 3,
                              indent: 65,

                            ),
                            Column(
                                  children:  [
                                    Text(dname! ,style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold)),
                                    Text(depertname!,style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold)),
                                    Text(hosbtail!,style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold)),
                                  ],

                                ),
                          ],
                        ),
Spacer(flex: 1,)
                      ]),
              
              ],
            ),

 Positioned(child:  VerticalDivider(color: Colors.lightGreen,
   thickness: 3,
   indent: 65,
 endIndent: 20

   ,
 ),),

            Positioned(

                top: 19,
                left: 180,
                child: Image.asset(img!,height: 100,)),

          ],
        ),
      ),
    );
  }
}


