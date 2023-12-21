import 'package:doc/view/doreivw.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ItemListViw extends StatelessWidget {
   ItemListViw({Key? key,required this.Name,required this.img}) : super(key: key);
  String ? img,Name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),

      child: Center(
        child: Card(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        ),
        elevation: 10,
         child: Padding(
           padding: const EdgeInsets.all(24),
           child: GestureDetector(

             child: Column(

               children: [
                 SvgPicture.asset(img!),
                 SizedBox(height: 30,),
                 Text(Name!)
               ],
             ),
           ),
         ),
        ),
      ),
    );
  }
}
