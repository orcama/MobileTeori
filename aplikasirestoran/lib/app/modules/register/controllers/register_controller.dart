import 'package:get/get.dart';

class RegisterController extends GetxController {
  // Text Editing Controllers for form fields
  var nameController = ''.obs;
  var emailController = ''.obs;
  var phoneController = ''.obs;
  var passwordController = ''.obs;
  var confirmPasswordController = ''.obs;

  // Function to handle registration
  void registerUser() {
    // Here you can handle registration logic, such as validation and sending data to server
    print('Name: ${nameController.value}');
    print('Email: ${emailController.value}');
    print('Phone: ${phoneController.value}');
    print('Password: ${passwordController.value}');
    print('Confirm Password: ${confirmPasswordController.value}');
  }
}