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
            const SizedBox(height: 20),
            // Tombol: Edit Profil, Ganti Password, Informasi
            _buildButton('Edit Profile', Icons.edit),
            _buildButton('Change Password', Icons.lock),
            _buildButton('Information', Icons.info),
            const SizedBox(height: 20),
          ],
        ),
      ),
      // Navigasi Bawah
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  // Widget Tombol Kustom
  Widget _buildButton(String title, IconData icon) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(icon),
        label: Text(title),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.yellow, // Warna tombol
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  // Navigasi Bawah
  Widget _buildBottomNav() {
    return BottomNavigationBar(
      currentIndex: 3, // Mengatur item "Profile" sebagai yang terpilih
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Reservation'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
      backgroundColor: Colors.amber,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.amber,
    );
  }
}
