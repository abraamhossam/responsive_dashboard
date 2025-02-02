import 'package:flutter/material.dart';
import 'package:responsive_dash_board/constants.dart';
import 'package:responsive_dash_board/helper/app_styles.dart';
import 'package:responsive_dash_board/model/all_expenses_iteam_model.dart';
import 'package:responsive_dash_board/view/widgets/all_expenses_iteam_header.dart';

class AllExpensesIteamNotActive extends StatelessWidget {
  const AllExpensesIteamNotActive({
    super.key,
    required this.model,
    this.ontap,
  });
  final AllExpensessItemModel model;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        margin: const EdgeInsets.only(
          right: 16,
        ),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              color: Color(0xfff1f1f1),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesIteamHeader(
              image: model.image,
              imageColor: kPrimaryColor,
            ),
            const SizedBox(
              height: 34,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                model.title,
                style: AppStyles.styleMedium16(context),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                model.date,
                style: AppStyles.styleRegular14(context),
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                model.price,
                style: AppStyles.styleSemiBold24(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
