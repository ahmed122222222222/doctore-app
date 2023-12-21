import 'package:flutter/material.dart';

import '../Model/avadoc.dart';
import 'ava.dart';
class AvaDoctore extends StatelessWidget {
  AvaDoctore({Key? key}) : super(key: key);
  List <Avadoctore>les=[Avadoctore(dname: 'mena', img: 'assets/images/Serena_Gome.png'),
    Avadoctore(dname: 'mena', img: 'assets/images/Serena_Gome.png'),
    Avadoctore(dname: 'mena', img: 'assets/images/Serena_Gome.png')
    ,Avadoctore(dname: 'mena', img: 'assets/images/Serena_Gome.png')
    ,Avadoctore(dname: 'mena', img: 'assets/images/Serena_Gome.png'),
    Avadoctore(dname: 'mena', img: 'assets/images/Serena_Gome.png')
    ,Avadoctore(dname: 'mena', img: 'assets/images/Serena_Gome.png')];
  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: ListView.builder(
          itemCount: les.length,
          clipBehavior: Clip.none,
 scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return ava(dname: les[index].dname, img: les[index].img, onTap: () {  }, );
          }),
    );
  }

}
