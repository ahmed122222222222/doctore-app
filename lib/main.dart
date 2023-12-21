import 'package:doc/cubit/Appointmentstate/ReadAppointment/read_appointment_cubit.dart';
import 'package:doc/cubit/Appointmentstate/storge/appointment_cubit.dart';
import 'package:doc/cubit/LoginCubi/login_cubit.dart';
import 'package:doc/cubit/Register/Readuser/read_register_cubit.dart';
import 'package:doc/cubit/Register/regsiter_cubit.dart';
import 'package:doc/view/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return

       MultiBlocProvider(

         providers: [
          BlocProvider(create:(context) => RegsiterCubit()),
          BlocProvider(create:(context) => LoginCubit()),
          BlocProvider(create:(context) => AppointmentCubit()),
          BlocProvider(create:(context) => ReadAppointmentCubit()),
           BlocProvider(create:(context) => ReadRegisterCubit())

         ],
         child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const home() ),
       );

  }
}
