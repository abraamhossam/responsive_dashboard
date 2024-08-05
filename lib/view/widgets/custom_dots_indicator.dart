import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/constants.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({
    super.key,
    required this.length,
    required this.pos,
  });
  final int length, pos;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: length,
      position: pos,
      decorator: DotsDecorator(
        activeColor: kPrimaryColor,
        size: const Size.square(9.0),
        activeSize: const Size(18.0, 9.0),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
    );
  }
}
