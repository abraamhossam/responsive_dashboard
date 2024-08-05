import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_dash_board/helper/my_bindings.dart';
import 'package:responsive_dash_board/helper/size_config.dart';
import 'package:responsive_dash_board/view/views/dashboard_view.dart';

void main() {
  runApp(
    const ResponsiveDashBoard(),
  );
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return GetMaterialApp(
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      initialBinding: MyBindings(),
      initialRoute: DashboardView.id,
      getPages: [
        GetPage(
          name: DashboardView.id,
          page: () => const DashboardView(),
        ),
      ],
    );
  }
}
