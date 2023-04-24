import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page/Screens/Welcome/components/background.dart';
import 'package:login_page/constants.dart';

import '../../components/raunded_button.dart';
import '../Login/login_screen.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // This size provide us total height and width of our screen
    return BackGround(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Welcome",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: kPrimaryColor),
              ),
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.40,
            ),
            RaundedButton(
              buttonText: "Login",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }),
                );
              },
              shadowColor: Colors.deepPurpleAccent,
              elevation: 3,
            ),
            RaundedButton(
              buttonText: "Sing Up",
              press: () {},
              textColor: Colors.black,
              color: kPrimaryLightColor,
              shadowColor: Colors.deepPurpleAccent,
              elevation: 3,
            ),
          ],
        ),
      ),
    );
  }
}
