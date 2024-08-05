import 'package:flutter/material.dart';
import 'package:responsive_dash_board/helper/app_styles.dart';
import 'package:responsive_dash_board/view/widgets/input_border.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
  });
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: const Color(0xFFFAFAFA),
        filled: true,
        hintText: hint,
        hintStyle: AppStyles.styleRegular16(context).copyWith(
          color: const Color(0xFFAAAAAA),
        ),
        contentPadding: const EdgeInsets.all(20),
        border: inputBorder(),
        enabledBorder: inputBorder(),
        focusedBorder: inputBorder(),
      ),
    );
  }
}
