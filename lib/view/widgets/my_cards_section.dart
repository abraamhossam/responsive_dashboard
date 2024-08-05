import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/helper/app_styles.dart';
import 'package:responsive_dash_board/view/widgets/custom_dots_indicator.dart';
import 'package:responsive_dash_board/view/widgets/my_cards.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Card",
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 8,
        ),
        ExpandablePageView(
          scrollDirection: Axis.horizontal,
          controller: pageController,
          children: List.generate(
            3,
            (index) {
              return const MyCards();
            },
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        CustomDotsIndicator(
          length: 3,
          pos: currentIndex,
        ),
      ],
    );
  }
}
