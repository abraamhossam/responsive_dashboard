import 'package:get/get.dart';

class DrawerIteamController extends GetxController {
  int indexController = 0;
  changeIndex({required int i}) {
    indexController = i;
    update();
  }
}
