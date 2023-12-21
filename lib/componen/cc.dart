import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class ss extends StatelessWidget {
 ss({Key? key ,required this.dname,required this.img,required this.onTap}) : super(key: key);
  String img,dname;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {

    return  Stack(

      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
              height: 250,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 50,
                  color: Colors.grey.withOpacity(.1),
                  spreadRadius: 20,
                  offset: Offset(10, 10),
                ),
              ]),
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 10,
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(dname,style: TextStyle(fontSize: 18,color: Colors.black87.withOpacity(.7)),),
                            Spacer(flex: 1,),
                            Text("mediacal splishlist",style: TextStyle(fontSize: 18,color: Colors.black87.withOpacity(.7))),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                for(int i=0;i<=5;i++)
                                  SvgPicture.asset("assets/icons/star.svg",)
                              ],
                            ),
                            Spacer(flex: 2,),
                            Text("experinces",style: TextStyle(fontSize: 18,color: Colors.black87.withOpacity(.7)))
                            ,Text("8",style: TextStyle(fontSize: 18,color: Colors.black87.withOpacity(.7))),
                            Spacer(flex: 2,),
                            Text("patients",style: TextStyle(fontSize: 18,color: Colors.black87.withOpacity(.7))),
                            Text("10.8 k",style: TextStyle(fontSize: 18,color: Colors.black87.withOpacity(.7)))

                          ],
                        ),


                      ],
                    ),
                  )

              )),
        ),
          Padding(padding: EdgeInsets.only(left: 8)),
    Positioned(
    right: 0,
    bottom: 15,
    child: Image.asset(
    img,
    height: 120,
    width: 100,
    )),

    ],
    );
  }
}

