import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/iteam_details_model.dart';
import 'package:responsive_dash_board/view/widgets/iteam_details.dart';

class IncomeDetailsListView extends StatelessWidget {
  const IncomeDetailsListView({super.key});
  static List iteams = [
    IteamDetailsModel(
      color: const Color(0xFF208CC8),
      title: "Design service",
      value: "40%",
    ),
    IteamDetailsModel(
      color: const Color(0xFF4EB7F2),
      title: "Design product",
      value: "25%",
    ),
    IteamDetailsModel(
      color: const Color(0xFF064061),
      title: "Product royalti",
      value: "20%",
    ),
    IteamDetailsModel(
      color: const Color(0xFFE2DECD),
      title: "Other",
      value: "22%",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: iteams
          .map(
            (e) => IteamDetails(
              model: e,
            ),
          )
          .toList(),
    );
  }
}
// ListView.builder(
//       padding: EdgeInsets.zero,
//       shrinkWrap: true,
//       itemCount: iteams.length,
//       itemBuilder: (context, index) {
//         return IteamDetails(
//           model: iteams[index],
//         );
//       },
//     );