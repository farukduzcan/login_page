import 'package:flutter/material.dart';

import '../constants.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccount({
    super.key,
    this.login = true,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Dont have an account? " : "Already have an account? ",
          style: const TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            login ? "Sing Up" : "Sing In",
            style: const TextStyle(
                color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
