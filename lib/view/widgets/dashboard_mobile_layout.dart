import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/view/widgets/income_section.dart';
import 'package:responsive_dash_board/view/widgets/my_cards_and_transactio_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSction(),
          SizedBox(
            height: 16,
          ),
          MyCardsAndTransactionHistorySection(),
          SizedBox(
            height: 16,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}
