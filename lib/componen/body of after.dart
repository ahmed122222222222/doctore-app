import 'package:flutter/material.dart';
class pov extends StatelessWidget {
  pov({Key? key,required this.name,required this.img,required this.city,required this.time}) : super(key: key);
  String name,img,city,time;

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.only(top: 7,left: 10,right: 10),
      child: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5)
        ),
        child: Expanded(
          child: Row(

            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Image.asset(img,height: 70,),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,style: TextStyle(fontSize: 15,color: Colors.black87),),
                  SizedBox(height: 3,),

                  Text("Cardigelist (fee-feu)",style: TextStyle(fontSize:15,fontWeight: FontWeight.normal,color: Colors.black54),)
                  ,SizedBox(height: 3,)
                  ,Row(
                    children: [
                      Text ("🕧 ${time}" ,style: TextStyle(fontSize:15,fontWeight: FontWeight.normal,color: Colors.black54) ),
                      Icon((Icons.location_on),color: Colors.black54,size: 15,)
                      ,Text(city,style: TextStyle(fontSize:15,fontWeight: FontWeight.normal,color: Colors.black54))
                    ],
                  )

                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
