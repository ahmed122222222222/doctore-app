import 'package:flutter/material.dart';
class RowItem extends StatelessWidget {
   RowItem({Key? key,required this.s1,}) : super(key: key);
String s1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(s1 ,style: TextStyle(color: Colors.black87.withOpacity(.8),fontSize: 15),),
          Text("see all",style: TextStyle(color: Colors.black87.withOpacity(.8),fontSize: 15),)
        ],
      ),
    );
  }
}
