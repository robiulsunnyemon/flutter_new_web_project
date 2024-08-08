import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "RSE",
      style: TextStyle(
        color: Color(0xffFFB53A),
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    );
  }
}
