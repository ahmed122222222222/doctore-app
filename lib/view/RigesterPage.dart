import 'package:doc/componen/CustomTextFormFiled.dart';
import 'package:doc/componen/FormRigesiser.dart';
import 'package:doc/componen/ShowSanpbar.dart';
import 'package:doc/cubit/Register/regsiter_cubit.dart';
import 'package:doc/view/Loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../componen/CustamAppbar.dart';

class RigesterPage extends StatelessWidget {
  RigesterPage({Key? key}) : super(key: key);
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegsiterCubit, RegsiterState>(
      listener: (context, state) {
        if (state is LoadingRegister) {
          isLoading = true;
        } else if (state is faulierRegister) {
          showSnackBar(context, state.errmass);
        }
       
      },
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              SvgPicture.asset("assets/icons/Sign_Up_bg.svg",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 90,
                    ),
                    CustamAppbar(
                      PageName: "Sing up",
                      NivgetorName: 'Sing in',
                      titel: "do you have already account ",
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => LoginPage())),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    FormRigesister()
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
