import 'package:egypt_tour/screens/home.dart';
import 'package:egypt_tour/screens/sing_up.dart';
import 'package:egypt_tour/widgets/connected_with_row.dart';
import 'package:egypt_tour/widgets/have_acc_or_not.dart';
import 'package:egypt_tour/widgets/sing_in_form.dart';
import 'package:egypt_tour/widgets/singin_and_singup_logo.dart';
import 'package:egypt_tour/widgets/title_and_desc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SingIn extends StatelessWidget {
  static String routeName = 'singIn';

  const SingIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
          const Center(child: Logo()),
          const TitleAndDescription(
              title: 'Sign In', desc: 'please sign in to continue'),
          SizedBox(height: 30.h),
          const SingInForm(),
          const ConnectedWithRow(),
          SizedBox(height: 10.h),
          InkWell(

              child: Image.asset('assets/images/google_logo.png',
                  height: 24.h, width: 24.w)),
          SizedBox(height: 10.h),
          HaveAccountOrNot(
            questionText: 'Don’t have an account ? ',
            goToPage: 'sign up',
            onTap: () {
              Navigator.pushReplacementNamed(context, SingUp.routeName);
            },
          )
        ],
      ),
    ));
  }

}