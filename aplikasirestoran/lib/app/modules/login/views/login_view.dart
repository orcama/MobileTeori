import 'package:aplikasirestoran/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "assets/background.png"), // Provide your background image path here
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        onChanged: (value) =>
                            controller.emailController.value = value,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 16),
                      TextField(
                        obscureText: true,
                        onChanged: (value) =>
                            controller.passwordController.value = value,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 8),
                      // Row for "Lupa Password"
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Handle forgot password action
                            },
                            child: Text('Lupa Password?',
                                style: TextStyle(color: Colors.black54)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Get.offNamed(Routes.WAGYU);
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50),
                        backgroundColor: Colors.yellow, // Match button color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text('Login',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 44, 44, 44))),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
