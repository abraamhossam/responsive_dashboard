import 'package:flutter/material.dart';
import 'package:responsive_dash_board/constants.dart';
import 'package:responsive_dash_board/view/widgets/custom_button.dart';
import 'package:responsive_dash_board/view/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                hintText: "Type customer name",
                title: "Customer name",
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                hintText: "Type customer email",
                title: "Customer Email",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                hintText: "Type customer name",
                title: "Item name",
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                hintText: "USD",
                title: "Item mount",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: 'Send Money',
                color: kPrimaryColor,
                backGroundColor: Colors.white,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomButton(
                text: 'Send Money',
                color: Colors.white,
                backGroundColor: kPrimaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
