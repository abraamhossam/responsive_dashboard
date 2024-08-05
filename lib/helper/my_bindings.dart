import 'package:get/get.dart';
import 'package:responsive_dash_board/controller/all_expenses_iteam_controller.dart';
import 'package:responsive_dash_board/controller/drawer_iteam_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(DrawerIteamController());
    Get.put(AllExpensesIteamController());
  }
}
