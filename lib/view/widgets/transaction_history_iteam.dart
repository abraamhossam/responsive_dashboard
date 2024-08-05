import 'package:flutter/material.dart';
import 'package:responsive_dash_board/constants.dart';
import 'package:responsive_dash_board/helper/app_styles.dart';
import 'package:responsive_dash_board/model/transaction_model.dart';

class TransactionHistoryIteam extends StatelessWidget {
  const TransactionHistoryIteam({
    super.key,
    required this.model,
  });
  final TransctionModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 8,
      ),
      decoration: BoxDecoration(
        color: const Color(0XFFFAFAFA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          model.title,
          style: AppStyles.styleBold16(context).copyWith(
            color: kArrowColor,
          ),
        ),
        subtitle: Text(
          model.date,
          style: AppStyles.styleRegular16(context).copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        trailing: model.inWithDrawal == true
            ? Text(
                model.amount,
                style: AppStyles.styleSemiBold20(context).copyWith(
                  color: const Color(0xFFF3735E),
                ),
              )
            : Text(
                model.amount,
                style: AppStyles.styleSemiBold20(context).copyWith(
                  color: const Color(0xFF7DD97B),
                ),
              ),
      ),
    );
  }
}
