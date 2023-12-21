import 'package:flutter/material.dart';
class custombtn extends StatelessWidget {
   custombtn({Key? key ,required this.onPressed,required this.label,required this.color}) : super(key: key);
  void Function()? onPressed;

  String ? label;
  Color ?color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      margin: const EdgeInsets.all(5),
      child: ElevatedButton(onPressed:onPressed, child: Text(label!,style:const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
   style: TextButton.styleFrom(
       backgroundColor:color ,

          shape: RoundedRectangleBorder(
            side:const BorderSide(color: Color(0xFF6CD8D1)),
            borderRadius: BorderRadius.circular(3),
          )
      ),
      ),
    );

  }
}
