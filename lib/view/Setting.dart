import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class se extends StatelessWidget {
  const se({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xE7ECF8FF),
 appBar: AppBar(
   backgroundColor: Colors.white,
   title: Text("setting",style: TextStyle(
     color: Colors.black87,
     fontSize: 20
   ),),
  centerTitle: true,
  leading: Icon(Icons.arrow_back_ios_rounded,color: Colors.black87,),
 ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.white,
            height: 250,
            child: Column(
              children: [
                listile(),
                listile(),
                listile(),
                listile(),
              ],
            )),
      ),
    );
  }
}
class listile extends StatefulWidget {
  const listile({Key? key}) : super(key: key);

  @override
  State<listile> createState() => _listileState();
}

class _listileState extends State<listile> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("vido call"),
      trailing:  Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: <Widget>[
          Switch(
            value: _switchValue,
            onChanged: (bool newValue) {
              setState(() {
                _switchValue = newValue;
              });
            },
          ),

        ],
      ),
    ),
      leading: SvgPicture.asset("assets/icons/Video_box.svg"),
    );
  }
}
