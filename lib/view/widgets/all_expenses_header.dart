import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_dash_board/constants.dart';
import 'package:responsive_dash_board/helper/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20(context),
        ),
        Card(
          color: Colors.white,
          elevation: 0.5,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Text(
                  "Monthly",
                  style: AppStyles.styleMedium16(context),
                ),
                const SizedBox(width: 18),
                const Icon(
                  FontAwesomeIcons.angleDown,
                  color: kArrowColor,
                  size: 20,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
