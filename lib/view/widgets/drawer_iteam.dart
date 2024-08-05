import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/constants.dart';
import 'package:responsive_dash_board/helper/app_styles.dart';
import 'package:responsive_dash_board/model/drawer_iteam_model.dart';

class DrawerIteamActive extends StatelessWidget {
  const DrawerIteamActive({
    super.key,
    required this.model,
  });
  final DrawerIteamModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: ListTile(
        leading: SvgPicture.asset(model.image),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            model.title,
            style: AppStyles.styleRegular16(context).copyWith(
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}

class DrawerIteamNotActive extends StatelessWidget {
  const DrawerIteamNotActive({
    super.key,
    required this.model,
    this.ontap,
  });
  final DrawerIteamModel model;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
        ),
        child: ListTile(
          leading: SvgPicture.asset(model.image),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              model.title,
              style: AppStyles.styleRegular16(context),
            ),
          ),
        ),
      ),
    );
  }
}
