import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.png"), // Provide your background image path here
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (value) => controller.nameController.value = value,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  onChanged: (value) => controller.emailController.value = value,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  onChanged: (value) => controller.phoneController.value = value,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  obscureText: true,
                  onChanged: (value) => controller.passwordController.value = value,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  obscureText: true,
                  onChanged: (value) => controller.confirmPasswordController.value = value,
                  decoration: InputDecoration(
                    labelText: 'Re-enter the password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => controller.registerUser(),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    backgroundColor: Colors.yellow, // Match button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Register', style: TextStyle(color: const Color.fromARGB(255, 29, 29, 29))),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    // Handle already have account action
                  },
                  child: Text('Already have account', style: TextStyle(color: Colors.black54)),
                ),
              ],
            ),
          ),
        ]
      )
    );
  }
}
