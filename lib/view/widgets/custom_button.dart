import 'package:flutter/material.dart';
import 'package:responsive_dash_board/helper/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.backGroundColor,
      required this.color});
  final String text;
  final Color backGroundColor, color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: const EdgeInsets.all(20),
        backgroundColor: backGroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: AppStyles.styleSemiBold18(context).copyWith(
          color: color,
        ),
      ),
    );
  }
}
