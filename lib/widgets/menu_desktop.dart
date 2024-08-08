import 'package:flutter/material.dart';

import '../constants/app_data.dart';
import '../constants/colors.dart';

class MenuDesktop extends StatelessWidget {
  const MenuDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for(int i=0;i<menu_item.length;i++)
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 2,vertical: 5),
            child: TextButton(
              onPressed: () {},
              child: Text(
                menu_item[i],
                style:  TextStyle(
                    color: AppColors.appWhite,
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
          ),
      ],
    );
  }
}
