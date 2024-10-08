import 'package:aplikasirestoran/app/routes/app_pages.dart';
import 'package:get/get.dart';

class ButtomnavController extends GetxController {
  //TODO: Implement HomeController

  var selectedIndex = 2.obs;

  // List of available routes based on the index
  final List<String> routes = [
    Routes.LOGIN, // 0
    Routes.WAGYU, // 1
    Routes.ORDER, // 2
    Routes.PROFILE, // 3
    Routes.RESERVATION, // 4
  ];

  // Function to handle navigation based on index
  void onItemTapped(int index) {
    selectedIndex.value = index;
    Get.toNamed(routes[index]);
  }
}
