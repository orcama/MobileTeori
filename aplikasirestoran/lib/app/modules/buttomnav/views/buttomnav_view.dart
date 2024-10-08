import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/buttomnav_controller.dart';

class ButtomnavView extends GetView<ButtomnavController> {
  const ButtomnavView({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtomnavController controller = Get.put(ButtomnavController()); // Assumes NavbarController is defined

    return Obx(() => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black, // Set background color to black
          selectedItemColor: Colors.white,  // Set the selected item color to white for contrast
          unselectedItemColor: Colors.yellow,
          currentIndex: controller.selectedIndex.value, // Observe the selected index
          onTap: (index) => controller.onItemTapped(index), // Handle tab changes
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: '',
            ),
            BottomNavigationBarItem( // Center tab for Home
              icon: Icon(Icons.check_circle_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              label: ''
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: ''
            ),
          ],
        ));
  }
}
