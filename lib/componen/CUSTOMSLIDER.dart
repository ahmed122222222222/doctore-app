import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../Model/ListModel.dart';
import 'CstuomItem.dart';
class Customsilde  extends StatelessWidget {
  Customsilde ({Key? key}) : super(key: key);
  List<ListModel> lis=[ListModel(dname: "sara", depertname: "heart", hosbial: "heartclicica", img: "assets/images/Asma_Khan.png"),
    ListModel(dname: "tamer", depertname: "pharmaist", hosbial: "pharmacy", img: "assets/images/Kiran_Shakia.png"),
    ListModel(dname: "hamdy", depertname: "depertname", hosbial: "pediatrician", img: "assets/images/Johir_Raihan.png"),
    ListModel(dname: "mena", depertname: "pharmasist", hosbial: "pharmacy", img: "assets/images/Serena_Gome.png")  ,
    ListModel(dname: "mena", depertname: "pharmasist", hosbial: "pharmacy", img: "assets/images/Serena_Gome.png"),
    ListModel(dname: "mena", depertname: "pharmasist", hosbial: "pharmacy", img: "assets/images/Serena_Gome.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return  CarouselSlider.builder( itemCount:lis.length , itemBuilder: (BuildContext context, int index, int realIndex) {
      return Customitem(dname: lis[index].dname, depertname: lis[index].depertname, hosbtail: lis[index].hosbial, img: lis[index].img,);
    }, options: CarouselOptions(
      height: 160,
      autoPlay: true,
      enlargeCenterPage: true,
      aspectRatio: 16/9,
      autoPlayCurve: Curves.fastOutSlowIn,
      enableInfiniteScroll: true,
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      viewportFraction: 0.8,
    ),) ;
  }
}