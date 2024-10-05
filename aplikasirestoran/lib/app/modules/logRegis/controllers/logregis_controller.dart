import 'package:get/get.dart';

class LogregisController extends GetxController {
  var isLoading = false.obs;

  void login() {
    isLoading.value = true;
    // Implement login logic here
    // Simulate a login process
    Future.delayed(const Duration(seconds: 2), () {
      isLoading.value = false;
      // Navigate or show login success
    });
  }

  void register() {
    // Implement register logic
    print('Navigate to register page');
  }
}
