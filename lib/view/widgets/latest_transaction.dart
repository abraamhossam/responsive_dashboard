import 'package:flutter/material.dart';
import 'package:responsive_dash_board/helper/app_images.dart';
import 'package:responsive_dash_board/model/user_info_model.dart';
import 'package:responsive_dash_board/view/widgets/user_info_list_tile.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({
    super.key,
  });
  final List<UserInfoModel> data = const [
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: "Madrani Andi",
      subTitle: "Madraniadi20@gmail",
    ),
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: "Josua Nunito",
      subTitle: "Josh Nunito@gmail.com",
    ),
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: "Madrani Andi",
      subTitle: "Madraniadi20@gmail",
    ),
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: "Josua Nunito",
      subTitle: "Josh Nunito@gmail.com",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: data.map((e) {
          return IntrinsicWidth(
            child: UserInfoListTile(
              model: e,
            ),
          );
        }).toList(),
      ),
    );
  }
}
