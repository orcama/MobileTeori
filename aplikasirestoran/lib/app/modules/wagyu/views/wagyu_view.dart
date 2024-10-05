import 'package:aplikasirestoran/app/modules/buttomnav/views/buttomnav_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../order/views/order_view.dart';
import '../controllers/wagyu_controller.dart';


class WagyuView extends GetView<WagyuController> {  
  const WagyuView({super.key});  

  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      body: Stack(  
        children: [  
          // Background Image  
          Container(  
            decoration: BoxDecoration(  
              image: DecorationImage(  
                image: AssetImage("assets/wagyu steak.jpeg"),  
                fit: BoxFit.cover,  
              ),  
            ),  
          ),  
          // Overlay  
          Container(  
            color: Colors.black.withOpacity(0.5), // Semi-transparent overlay  
          ),  
          // Content  
          Padding(  
            padding: const EdgeInsets.all(16.0),  
            child: Column(  
              crossAxisAlignment: CrossAxisAlignment.start,  
              children: [  
                const SizedBox(height: 40), // Space for the status bar  
                Row(  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,  
                  children: [  
                    IconButton(  
                      icon: const Icon(Icons.arrow_back, color: Colors.white),  
                      onPressed: () {  
                        Get.back(); // Kembali ke halaman sebelumnya  
                      },  
                    ),  
                    IconButton(  
                      icon: const Icon(Icons.label_important_sharp, color: Colors.white),  
                      onPressed: () {  
                        // Logika untuk menyimpan  
                      },  
                    ),  
                  ],  
                ),  
                const SizedBox(height: 20),  
                const Text(  
                  'Wagyu Steak',  
                  style: TextStyle(  
                    fontSize: 32,  
                    fontWeight: FontWeight.bold,  
                    color: Colors.white,  
                  ),  
                ),  
                const SizedBox(height: 8),  
                const Text(  
                  'Wagyu Meat, Tender, Grilled, & Juicy',  
                  style: TextStyle(  
                    fontSize: 16,  
                    color: Colors.white,  
                  ),  
                ),  
                const SizedBox(height: 8),  
                const Text(  
                  'Rp.105.000',  
                  style: TextStyle(  
                    fontSize: 24,  
                    fontWeight: FontWeight.bold,  
                    color: Colors.yellow,  
                  ),  
                ),  
                const SizedBox(height: 20),  
                // Kotak informasi  
                Container(  
                  padding: const EdgeInsets.all(16),  
                  decoration: BoxDecoration(  
                    color: Colors.white.withOpacity(0.8),  
                    borderRadius: BorderRadius.circular(8),  
                  ),  
                  child: Column(  
                    children: [  
                      Row(  
                        mainAxisAlignment: MainAxisAlignment.spaceAround,  
                        children: const [  
                          InfoCard(icon: Icons.access_time, label: '45 Mins'),  
                          InfoCard(icon: Icons.restaurant, label: '1 Serving'),  
                          InfoCard(icon: Icons.phone, label: '103 Calls'),  
                        ],  
                      ),  
                      const SizedBox(height: 20),  
                      const Text(  
                        'Description',  
                        style: TextStyle(  
                          fontSize: 20,  
                          fontWeight: FontWeight.bold,  
                        ),  
                      ),  
                      const SizedBox(height: 8),  
                      const Text(  
                        'Potongan daging sapi pilihan yang dimasak sempurna dengan bumbu rempah khas. Disajikan dengan menjaga keindahan dan aroma hebat yang menggugah selera. Pilihan saus penambah tersedia untuk melengkapi kenikmatan Anda.',  
                        style: TextStyle(fontSize: 16),  
                      ),  
                    ],  
                  ),  
                ),  
              ],  
            ),  
          ),  
          // Tombol Order  
          Positioned(  
            right: 16,  
            top: 150,  
            child: FloatingActionButton(  
              onPressed: () {  
                // Logika untuk menambah order  
                Get.to(() => OrderView());  
              },  
              child: const Icon(Icons.shopping_bag),  
              backgroundColor: Colors.yellow,  
            ),  
          ),  
        ],  
      ),  
      bottomNavigationBar: const ButtomnavView(),
    );  
  }  
}  

class InfoCard extends StatelessWidget {  
  final IconData icon;  
  final String label;  

  const InfoCard({Key? key, required this.icon, required this.label}) : super(key: key);  

  @override  
  Widget build(BuildContext context) {  
    return Column(  
      children: [  
        CircleAvatar(  
          backgroundColor: Colors.yellow,  
          child: Icon(icon, color: Colors.black),  
        ),  
        const SizedBox(height: 8),  
        Text(  
          label,  
          style: const TextStyle(color: Colors.black),  
        ),  
      ],  
    );  
  }  
}  