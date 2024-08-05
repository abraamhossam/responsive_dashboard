import 'package:get/get.dart';

class AllExpensesIteamController extends GetxController {
  int indexController = 0;
  changeIndex({required int i}) {
    indexController = i;
    update();
  }
}
