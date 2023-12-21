import 'package:doc/componen/CustomTextFormFiled.dart';
import 'package:doc/cubit/LoginCubi/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Btnhomescreen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String? email, password;
  final GlobalKey<FormState> key = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: key,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            CustomTextformFiled(
              rt: false,
              labelText: "email",
              onChanged: (data) => email = data,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextformFiled(
rt: true,
              labelText: "password",
              onChanged: (data) => password = data,
            ),
            const SizedBox(
              height: 15,
            ),
            BlocProvider(
              create: (context) => LoginCubit(),
              child: custombtn(
                onPressed: () {
                  if (key.currentState!.validate()) {
                    key.currentState!.save();
                    BlocProvider.of<LoginCubit>(context)
                        .loginUser(email: email, password: password);
                  }
                },
                label: "sing in",
                color: const Color(0xFF6CD8D1),
              ),
            ),
          ],
        ));
  }
}
