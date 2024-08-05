import 'package:flutter/material.dart';
import 'package:responsive_dash_board/helper/app_styles.dart';
import 'package:responsive_dash_board/model/iteam_details_model.dart';

class IteamDetails extends StatelessWidget {
  const IteamDetails({
    super.key,
    required this.model,
  });
  final IteamDetailsModel model;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: model.color,
        ),
      ),
      title: Text(
        model.title,
        style: AppStyles.styleSemiBold16(context),
      ),
      trailing: Text(
        model.value,
        style: AppStyles.styleBold16(context),
      ),
    );
  }
}
