import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_dash_board/controller/drawer_iteam_controller.dart';
import 'package:responsive_dash_board/helper/app_images.dart';
import 'package:responsive_dash_board/model/drawer_iteam_model.dart';
import 'package:responsive_dash_board/view/widgets/drawer_iteam.dart';

class DrawerIteamsListView extends StatelessWidget {
  const DrawerIteamsListView({
    super.key,
  });

  final List<DrawerIteamModel> data = const [
    DrawerIteamModel(
      title: "Dashboard",
      image: Assets.imagesDashboard,
    ),
    DrawerIteamModel(
      title: "My Transaction",
      image: Assets.imagesMyTransctions,
    ),
    DrawerIteamModel(
      title: "Statistics",
      image: Assets.imagesStatistics,
    ),
    DrawerIteamModel(
      title: "Wallet Account",
      image: Assets.imagesWalletAccount,
    ),
    DrawerIteamModel(
      title: "My Investments",
      image: Assets.imagesMyInvestments,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DrawerIteamController>(
      builder: (controller) {
        return SliverList.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return controller.indexController == index
                ? DrawerIteamActive(
                    model: data[index],
                  )
                : DrawerIteamNotActive(
                    ontap: () {
                      controller.changeIndex(i: index);
                    },
                    model: data[index],
                  );
          },
        );
      },
    );
  }
}
