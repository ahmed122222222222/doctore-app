import 'package:doc/componen/CustamAppbar.dart';
import 'package:doc/componen/ShowSanpbar.dart';
import 'package:doc/cubit/LoginCubi/login_cubit.dart';
import 'package:doc/view/RigesterPage.dart';
import 'package:doc/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../componen/Formlogin.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoadingLOgin) {
          isLoading = true;
        } else if (state is sucessLogin) {
          Navigator.push(
              context, MaterialPageRoute(builder: (builder) => Homeapp()));
        } else if (state is fauilerLogin) {
          showSnackBar(context, state.loginerr.toString());
        } else {
          showSnackBar(context, "some thing is wrong");
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
                child: Column(
                  children: [
                    const SizedBox(
                      height: 90,
                    ),
                    CustamAppbar(
                        PageName: "sing in",
                        titel: "do not have account ",
                        onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => RigesterPage()),
                            ),
                        NivgetorName: "sin up"),
                    const SizedBox(
                      height: 15,
                    ),
                    const LoginForm(),
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
