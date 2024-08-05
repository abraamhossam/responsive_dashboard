import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/widgets/custom_divider.dart';
import 'package:responsive_dash_board/view/widgets/my_cards_section.dart';
import 'package:responsive_dash_board/view/widgets/transaction_history.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        16,
      ),
      color: Colors.white,
      child: const Column(
        children: [
          MyCardsSection(),
          CustomDivider(),
          TransactionHistory(),
        ],
      ),
    );
  }
}
