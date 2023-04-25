import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page/Screens/Singup/components/background.dart';
import 'package:login_page/components/already_have_anaccount.dart';
import 'package:login_page/components/raunded_password_field.dart';
import 'package:login_page/constants.dart';

import '../../../components/raunded_button.dart';
import '../../../components/raunded_input_field.dart';
import '../../Login/login_screen.dart';

class Body extends StatelessWidget {
  final Widget child;
  Body({super.key, required this.child});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "SINGUP",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
                fontSize: 34),
          ),
          SvgPicture.asset(
            "assets/icons/signup.svg",
            height: size.height * 0.35,
          ),
          Form(
            key: _formKey,
            child: Column(children: [
              RoundedInputField(
                hintText: "Email",
                icon: Icons.person,
                onChanged: (value) {},
              ),
              RaundedPasswordField(
                onChanged: (value) {},
              ),
            ]),
          ),
          RaundedButton(
              buttonText: "Sing Up",
              press: () {
                if (_formKey.currentState?.validate() ?? false) {}
              }),
          AlreadyHaveAnAccount(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const LoginScreen();
                }),
              );
            },
          )
        ],
      ),
    ));
  }
}
