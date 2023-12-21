import 'package:doc/componen/date.dart';
import 'package:doc/componen/selecttext.dart';
import 'package:doc/view/Appointment.dart';
import 'package:doc/view/aftersearch.dart';
import 'package:flutter/material.dart';
class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color(0xE7ECF8FF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("search here",style: TextStyle(
          fontSize: 20,
          color: Colors.black87
        ),),
       centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_rounded,color: Colors.black87,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(


          children: [

            Text("search your ",style: TextStyle(fontSize: 23,color: Colors.grey,fontWeight: FontWeight.bold),)
            ,Text("specahlist",style: TextStyle(fontSize: 23,color: Colors.black87),),
            SizedBox(height: 15,),
        LocationDropdownTextField(options: ["cairo","beheria","monfya","alex"], initialValue: 'cairo', onChanged: (String ) {  }, label: 'select place', icom: Icons.location_on,)

       , SizedBox(height: 15,),
        LocationDropdownTextField(options: ["tamer","hamdy","ali","aysel"], initialValue: 'aysel', onChanged: (String ) {  }, label: 'select spechlist',icom: Icons.accessibility_new_sharp,)

        ,SizedBox(height: 15,),
            MyTextFielddd(),
            SizedBox(height: 15,),

            GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (builder)=>After())),
                child: bottom())
          ],
          
        ),
      ),
    );
  }
}
