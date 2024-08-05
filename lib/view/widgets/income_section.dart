import 'package:flutter/material.dart';
import 'package:responsive_dash_board/helper/app_styles.dart';
import 'package:responsive_dash_board/view/widgets/income_chart.dart';
import 'package:responsive_dash_board/view/widgets/income_details_list_view.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 16,
      ),
      padding: const EdgeInsets.all(
        16,
      ),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Income",
            style: AppStyles.styleSemiBold20(context),
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                flex: 2,
                child: IncomeDetailsListView(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
