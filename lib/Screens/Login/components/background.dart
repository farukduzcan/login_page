import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    super.key,
    required this.child,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity, // bu bize ekranın tamamını kaplamasını sağlar
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: size.width * 0.35,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              "assets/images/login_bottom.png",
              width: size.width * 0.40,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
