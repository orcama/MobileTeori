import 'package:get/get.dart';

class LoginController extends GetxController {
  // Text Editing Controllers for form fields
  var emailController = ''.obs;
  var passwordController = ''.obs;

  // Function to handle registration
  void registerUser() {
    // Here you can handle registration logic, such as validation and sending data to server
    print('Email: ${emailController.value}');
    print('Password: ${passwordController.value}');
  }
}
