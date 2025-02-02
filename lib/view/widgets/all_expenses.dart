import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/view/widgets/all_expenses_iteams_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        16,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesIteamsListView(),
        ],
      ),
    );
  }
}
