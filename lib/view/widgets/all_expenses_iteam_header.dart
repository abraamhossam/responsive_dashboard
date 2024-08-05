import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_dash_board/constants.dart';

class AllExpensesIteamHeader extends StatelessWidget {
  const AllExpensesIteamHeader({
    super.key,
    required this.image,
    this.arrowColor,
    required this.imageColor,
  });
  final String image;
  final Color? arrowColor;
  final Color imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 60,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: const Color(0xfff1f1f1).withOpacity(0.6),
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(imageColor, BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        Icon(
          FontAwesomeIcons.angleRight,
          color: arrowColor ?? kArrowColor,
          size: 20,
        ),
      ],
    );
  }
}
