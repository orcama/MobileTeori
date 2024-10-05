import 'package:get/get.dart';

import '../controllers/wagyu_controller.dart';

class WagyuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WagyuController>(
      () => WagyuController(),
    );
  }
}
