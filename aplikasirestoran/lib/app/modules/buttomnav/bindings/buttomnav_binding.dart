import 'package:get/get.dart';

import '../controllers/buttomnav_controller.dart';

class ButtomnavBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ButtomnavController>(
      () => ButtomnavController(),
    );
  }
}
