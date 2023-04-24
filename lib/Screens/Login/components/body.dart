import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page/Screens/Login/components/background.dart';
import 'package:login_page/components/raunded_button.dart';
import 'package:login_page/constants.dart';

import '../../../components/already_have_anaccount.dart';
import '../../../components/raunded_input_field.dart';
import '../../../components/raunded_password_field.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Login",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                  fontSize: 34),
            ),
          ),
          SvgPicture.asset(
            "assets/icons/login.svg",
            width: size.width * 0.35,
          ),
          RoundedInputField(
            hintText: "Email",
            icon: Icons.person,
            onChanged: (value) {},
          ),
          RaundedPasswordField(
            onChanged: (value) {},
          ),
          RaundedButton(buttonText: "Login", press: () {}),
          AlreadyHaveAnAccount(
            press: () {},
          ),
        ],
      ),
    );
  }
}
