import 'package:doc/Model/Aftermodel.dart';
import 'package:doc/Model/avadoc.dart';
import 'package:doc/componen/Rowitem.dart';
import 'package:doc/componen/body%20of%20after.dart';
import 'package:doc/componen/selecttext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../componen/Afterappbar.dart';
import '../componen/geidView.dart';

class After extends StatelessWidget {
  After({Key? key}) : super(key: key);
  List<Aftermodel> less = [
    Aftermodel(
        name: "dr.leen",
        city: cityname!,
        img: "assets/images/search_doc_1.png",
        time: "3pm-5pm"),
    Aftermodel(
        name: "dr.mohamed",
        city: cityname!,
        img: "assets/images/search_doc_2.png",
        time: "7pm-12pm"),
    Aftermodel(
        name: "dr.omer",
        city: cityname!,
        img: "assets/images/search_doc_3.png",
        time: "7pm-9pm"),
    Aftermodel(
        name: "dr.zeiad",
        city: cityname!,
        img: "assets/images/search_doc_4.png",
        time: "10am-2pm")
  ];
  List<Avadoctore> les = [
    Avadoctore(dname: 'mena', img: 'assets/images/Serena_Gome.png'),
    Avadoctore(dname: 'mena', img: 'assets/images/Serena_Gome.png',),
    Avadoctore(dname: 'mena', img: 'assets/images/Serena_Gome.png'),
    Avadoctore(dname: 'mena', img: 'assets/images/Serena_Gome.png'),
    Avadoctore(dname: 'mena', img: 'assets/images/Serena_Gome.png',),
    Avadoctore(dname: 'mena', img: 'assets/images/Serena_Gome.png'),
    Avadoctore(dname: 'mena', img: 'assets/images/Serena_Gome.png')
  ];
  final GlobalKey _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xE5EDF9FF),
      body: Column(
        children: [
          Appafter(cit: cityname!,),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: RowItem(s1: "all caridrogest"),
          ),
          ListView.builder(
            padding: EdgeInsets.only(top: 0),
            itemCount: less.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return pov(
                name: less[index].name,
                img: less[index].img,
                city: less[index].city,
                time: less[index].time,
              );
            },
          ),
          RowItem(s1: "Avalibel doctore"),
          AvaDoctore(),
          SizedBox(height: 13,)
        ],

      ),
    );
  }
}