import 'package:doc/cubit/Appointmentstate/storge/appointment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
    class ro extends StatefulWidget {
      const ro({Key? key}) : super(key: key);

      @override
      State<ro> createState() => _roState();
    }
int ?selc;
late String time;
  List les=["12:12 pm","1:30 pm ","3:30 pm ","4:30 pm","6:30 pm"];
  var le=0;
    class _roState extends State<ro> {
      @override
      Widget build(BuildContext context) {
        Color color;

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            direction: Axis.horizontal,

            children: List.generate(5, (index) {
            return InkWell(
               onTap: (){
              setState(() {
                selc=index;
                time=les[index];


              });
              BlocProvider.of<AppointmentCubit>(context).time=time;
              },
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Container(

            padding: EdgeInsets.all(15),
        decoration: BoxDecoration(

         color: selc==index? Color(0xFF255ED6):Colors.
            white
        ),
        child: Text(  les[index]),

        ),
              ),
            ) ;
        }



          ),
        ),);
      }
    }
