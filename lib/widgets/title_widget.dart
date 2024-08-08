import 'package:flutter/cupertino.dart';
import 'package:portfolio/constants/colors.dart';

class TitleWidget extends StatelessWidget {
  final String text;
  const TitleWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: AppColors.appWhite,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
