import 'package:doc/componen/CustomTextFormFiled.dart';
import 'package:doc/cubit/Register/regsiter_cubit.dart';
import 'package:doc/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view/Loginpage.dart';
import 'Btnhomescreen.dart';

class FormRigesister extends StatefulWidget {
  FormRigesister({Key? key}) : super(key: key);

  @override
  State<FormRigesister> createState() => _FormRigesisterState();
}

class _FormRigesisterState extends State<FormRigesister> {
  final GlobalKey<FormState> key = GlobalKey();
  String? username, email, password, phone;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          CustomTextformFiled(
            rt: false,
            labelText: "user name",
            onChanged: (data) => username = data,
          ),
          SizedBox(
            height: 15,
          ),
          CustomTextformFiled(
            rt: false,
            labelText: "email",
            onChanged: (data) => email = data,
          ),
          SizedBox(
            height: 15,
          ),
          CustomTextformFiled(
            rt: true,
            labelText: "password",
            onChanged: (data) => password = data,
          ),
          SizedBox(
            height: 15,
          ),
          CustomTextformFiled(
            rt: false,
              labelText: "phone", onChanged: (data) => phone = data),
          SizedBox(
            height: 15,
          ),
          BlocProvider(
            create: (context) => RegsiterCubit(),
            
              child: custombtn(
                onPressed: () {
                  if (key.currentState!.validate()) {
                    key.currentState!.save();
                    BlocProvider.of<RegsiterCubit>(context).registerUser(
                        email: email, password: password, phone: phone,username:username );
                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>Homeapp()));
                       
                  }
                },
                label: "sing up",
                color: Color(0xFF6CD8D1),
              ),
            ),
          
        ],
      ),
    );
  }
}
