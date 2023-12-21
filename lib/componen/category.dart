import 'package:flutter/material.dart';

import '../Model/categroy momery.dart';
import 'CustomItemlistView.dart';
class Catogry extends StatelessWidget {
  Catogry({Key? key}) : super(key: key);
  List<categry> Lis=[
    categry(name: "Psychiatrist", img: "assets/icons/Psychiatrist.svg"),
    categry(name: "Pediatrician", img: "assets/icons/Pediatrician.svg"),
    categry(name: "Neurosurgeon", img: "assets/icons/Neurosurgeon.svg"),
    categry(name: "Neurosurgeon", img: "assets/icons/Neurosurgeon.svg"),
    categry(name: "Neurosurgeon", img: "assets/icons/Neurosurgeon.svg")
  ];
  @override
  Widget build(BuildContext context) {

    return Container(
height: 160,
      child: Expanded(

        child: ListView.builder(

            scrollDirection: Axis.horizontal ,itemCount: Lis.length,itemBuilder: (BuildContext context,index){
          return ItemListViw(Name: Lis[index].name, img:Lis[index].img,);


        }),
      ),
    );
  }
}
