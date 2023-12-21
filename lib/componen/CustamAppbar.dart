import 'package:flutter/material.dart';

class CustamAppbar extends StatelessWidget {
   CustamAppbar({Key? key,required this.PageName,required this.titel,required this.onTap,required this.NivgetorName}) : super(key: key);
 String PageName,titel,NivgetorName;
void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(PageName,style:const TextStyle(fontSize: 32,fontWeight: FontWeight.bold),)
        , const SizedBox(height: 15,)
        ,Row(

          children: [

            Text("${titel} ? ",style:const TextStyle(fontSize: 14),),
            GestureDetector(
              onTap: onTap,
              child: Text(NivgetorName,style: const TextStyle(fontSize: 14,color: Colors.lightBlueAccent),)),
          ],
        )
      ],
    );
  }
}
