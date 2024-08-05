import 'package:flutter/material.dart';
import 'package:responsive_dash_board/constants.dart';
import 'package:responsive_dash_board/helper/app_styles.dart';
import 'package:responsive_dash_board/model/all_expenses_iteam_model.dart';
import 'package:responsive_dash_board/view/widgets/all_expenses_iteam_header.dart';

class AllExpensesIteamActive extends StatelessWidget {
  const AllExpensesIteamActive({
    super.key,
    required this.model,
  });
  final AllExpensessItemModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      margin: const EdgeInsets.only(
        right: 16,
      ),
      decoration: ShapeDecoration(
        color: kPrimaryColor,
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
            imageColor: Colors.white,
            arrowColor: Colors.white,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              model.title,
              style: AppStyles.styleMedium16(context).copyWith(
                color: Colors.white,
              ),
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
              style: AppStyles.styleRegular14(context).copyWith(
                color: Colors.white,
              ),
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
              style: AppStyles.styleSemiBold24(context).copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
