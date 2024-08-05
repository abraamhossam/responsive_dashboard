import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/view/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dash_board/view/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/view/widgets/dashboard_tablet_layout.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => const DashboardMobileLayout(),
      tabletLayout: (context) => const DashboardTabletLayout(),
      desktopLayout: (context) => const DashboardDesktopLayout(),
    );
  }
}
