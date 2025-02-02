import 'package:flutter/material.dart';
import 'package:responsive_dash_board/helper/app_styles.dart';
import 'package:responsive_dash_board/view/widgets/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({
    super.key,
    required this.title,
    required this.hintText,
  });
  final String title, hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 8,
        ),
        CustomTextField(
          hint: hintText,
        ),
      ],
    );
  }
}
