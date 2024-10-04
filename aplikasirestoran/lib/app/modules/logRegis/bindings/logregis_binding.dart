import 'package:aplikasirestoran/app/modules/logRegis/controllers/logregis_controller.dart';
import 'package:get/get.dart';

class LogregisBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LogregisController>(
      () => LogregisController());
  }
}