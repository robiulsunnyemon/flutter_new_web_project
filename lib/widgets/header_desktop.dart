import 'package:flutter/material.dart';

import 'app_logo.dart';
import 'menu_desktop.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Color(0xff303342),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppLogo(),
          MenuDesktop(),
        ],
      ),
    );
  }
}
