import 'package:flutter/material.dart';  
import 'package:get/get.dart';  

import '../../order/views/order_view.dart';
import '../../wagyu/views/wagyu_view.dart';
import '../controllers/buttomnav_controller.dart';  


class ButtomnavView extends GetView<ButtomnavController> {  
  const ButtomnavView({super.key});  

  @override
  Widget build(BuildContext context) {
    final ButtomnavController controller = Get.find(); // Assumes NavbarController is defined

    return Obx(() => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.teal,  // Changed to teal as selected color
          unselectedItemColor: Colors.grey,
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
          ],
        ));
  }
}  