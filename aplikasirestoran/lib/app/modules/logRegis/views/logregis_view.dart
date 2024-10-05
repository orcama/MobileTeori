import 'package:aplikasirestoran/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/logregis_controller.dart';

class LogregisView extends GetView<LogregisController> {
  const LogregisView({super.key});
  @override
  Widget build(BuildContext context) {
    final LogregisController controller = Get.find();

    return Scaffold(
      body: Stack(
        children: [
          // Background color
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.yellow.shade600,
                  const Color.fromARGB(255, 253, 248, 204)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.yellow.shade700,
                  child: Image.asset(
                    'assets/LOGO.png',
                    width: 90,
                    height: 90,
                  ),
                ),
                SizedBox(height: 32),

                // Login button
                ElevatedButton(
                  onPressed: () {
                    controller.login();
                    Get.offNamed(Routes.LOGIN);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow.shade600,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
                SizedBox(height: 16),

                // Register button
                OutlinedButton(
                  onPressed: () {
                    controller.register();
                    Get.offNamed(Routes.REGISTER);
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.black),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
