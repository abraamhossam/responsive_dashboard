import 'package:flutter/material.dart';
import 'package:responsive_dash_board/helper/app_images.dart';
import 'package:responsive_dash_board/helper/size_config.dart';
import 'package:responsive_dash_board/model/drawer_iteam_model.dart';
import 'package:responsive_dash_board/model/user_info_model.dart';
import 'package:responsive_dash_board/view/widgets/drawer_iteam.dart';
import 'package:responsive_dash_board/view/widgets/drawer_iteams_list_view.dart';
import 'package:responsive_dash_board/view/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.width * 0.6,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              model: UserInfoModel(
                image: Assets.imagesAvatar3,
                title: "Lekan Okeowo",
                subTitle: "demo@gmail.com",
              ),
            ),
          ),
          DrawerIteamsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                DrawerIteamNotActive(
                  model: DrawerIteamModel(
                    title: "Setting system",
                    image: Assets.imagesSettings,
                  ),
                ),
                DrawerIteamNotActive(
                  model: DrawerIteamModel(
                    title: "Logout account",
                    image: Assets.imagesLogout,
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
