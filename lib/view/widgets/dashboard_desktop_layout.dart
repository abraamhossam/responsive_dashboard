import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/view/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/view/widgets/income_section.dart';
import 'package:responsive_dash_board/view/widgets/my_cards_and_transactio_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 5,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: AllExpensesAndQuickInvoiceSction(),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          MyCardsAndTransactionHistorySection(),
                          Expanded(
                            child: IncomeSection(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
