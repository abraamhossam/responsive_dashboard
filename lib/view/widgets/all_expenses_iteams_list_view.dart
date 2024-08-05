import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:responsive_dash_board/controller/all_expenses_iteam_controller.dart';
import 'package:responsive_dash_board/helper/app_images.dart';
import 'package:responsive_dash_board/model/all_expenses_iteam_model.dart';
import 'package:responsive_dash_board/view/widgets/all_expenses_iteam_active.dart';
import 'package:responsive_dash_board/view/widgets/all_expenses_iteam_not_active.dart';

class AllExpensesIteamsListView extends StatelessWidget {
  const AllExpensesIteamsListView({
    super.key,
  });

  final List<AllExpensessItemModel> items = const [
    AllExpensessItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensessItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensessItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AllExpensesIteamController>(
      builder: (controller) {
        return Row(
          children: items.asMap().entries.map(
            (e) {
              int index = e.key;

              return controller.indexController == index
                  ? Expanded(
                      child: AllExpensesIteamActive(
                        model: items[index],
                      ),
                    )
                  : Expanded(
                      child: AllExpensesIteamNotActive(
                        ontap: () {
                          controller.changeIndex(i: index);
                        },
                        model: items[index],
                      ),
                    );
            },
          ).toList(),
        );
      },
    );
  }
}
