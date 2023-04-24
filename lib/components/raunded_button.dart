import 'package:flutter/material.dart';

import '../constants.dart';

class RaundedButton extends StatelessWidget {
  final String buttonText;
  final Function press;
  final Color color, textColor, shadowColor;
  final double elevation;
  const RaundedButton({
    super.key,
    required this.buttonText,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
    this.shadowColor = Colors.black,
    this.elevation = 1,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      width: size.width * 0.7,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          elevation: elevation,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          shadowColor: shadowColor,
          shape: const StadiumBorder(),
        ),
        onPressed: () {
          press();
        },
        child: Text(
          buttonText,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
