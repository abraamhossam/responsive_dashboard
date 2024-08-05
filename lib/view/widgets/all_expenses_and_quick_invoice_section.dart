import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/widgets/all_expenses.dart';
import 'package:responsive_dash_board/view/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSction extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(
          height: 16,
        ),
        QuickInvoice(),
      ],
    );
  }
}
