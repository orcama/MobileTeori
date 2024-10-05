import 'package:aplikasirestoran/app/modules/buttomnav/views/buttomnav_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.back(); // Fungsi tombol kembali
          },
        ),
        backgroundColor: Colors.yellow,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Gambar Profil dan Info
            const CircleAvatar(
              radius: 50,
              backgroundImage:
                  AssetImage('assets/PP.png'), // Tambahkan gambar kamu
            ),
            const SizedBox(height: 10),
            Obx(() => Text(
                  controller.userName.value,
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold),
                )),
            Obx(() => Text(
                  controller.userAccount.value,
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                )),
            const SizedBox(height: 10),
            // Points
            Obx(() => Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color:
                            const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Text(
                        controller.userPoints.value.toString(),
                        style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow),
                      ),
                      const Text('POINT', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                )),
          ]
        ),
      ),
      // Navigasi Bawah
      bottomNavigationBar: ButtomnavView(),
    );
  }
}
