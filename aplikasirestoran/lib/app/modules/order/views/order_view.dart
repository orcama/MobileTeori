import 'package:aplikasirestoran/app/modules/buttomnav/views/buttomnav_view.dart';
import 'package:flutter/material.dart';

class OrderView extends StatefulWidget {  
  const OrderView({super.key});  

  @override  
  _OrderViewState createState() => _OrderViewState();  
}  

class _OrderViewState extends State<OrderView> {  
  int quantity = 0; // Jumlah awal  
  final double pricePerItem = 105000; // Harga per item  

  // Menghitung total  
  double totalPrice() {  
    return quantity * pricePerItem;  
  }  

  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: const Text('ORDER'),  
        centerTitle: true,  
        backgroundColor: const Color(0xFFFFE710),  
      ),  
      body: Padding(  
        padding: const EdgeInsets.all(16.0),  
        child: Column(  
          crossAxisAlignment: CrossAxisAlignment.start,  
          children: [  
            const Text(  
              '"Flavor, Delivered!"',  
              style: TextStyle(  
                fontSize: 16,  
                color: Color(0xFFFFE710),  
              ),  
            ),  
            const SizedBox(height: 20),  
            const Text(  
              'Your Order',  
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),  
            ),  
            const SizedBox(height: 20),  
            Container(  
              padding: const EdgeInsets.all(16),  
              decoration: BoxDecoration(  
                color: const Color.fromARGB(255, 161, 161, 161),  
                borderRadius: BorderRadius.circular(8),  
                boxShadow: [  
                  BoxShadow(  
                    color: const Color.fromARGB(255, 83, 83, 83).withOpacity(0.2),  
                    spreadRadius: 2,  
                    blurRadius: 5,  
                    offset: const Offset(0, 3),  
                  ),  
                ],  
              ),  
              
              child: Row(  
                mainAxisAlignment: MainAxisAlignment.spaceBetween,  
                children: [  
                  // Bagian Kiri: Nama, Harga, Jumlah  
                  Expanded(  
                    child: Column(  
                      crossAxisAlignment: CrossAxisAlignment.start,  
                      children: [  
                        const Text('Wagyu Steak', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold )), 
                        Text('Rp.${pricePerItem.toStringAsFixed(0)}', style: const TextStyle(fontSize: 16)),  
                        const SizedBox(height: 10),  
                        Row(  
                          children: [  
                            IconButton(  
                              icon: const Icon(Icons.remove),  
                              onPressed: () {  
                                if (quantity > 0) {  
                                  setState(() {  
                                    quantity--;  
                                  });  
                                }  
                              },  
                            ),  
                            Text('$quantity', style: const TextStyle(fontSize: 16)),  
                            IconButton(  
                              icon: const Icon(Icons.add),  
                              onPressed: () {  
                                setState(() {  
                                  quantity++;  
                                });  
                              },  
                            ),  
                          ],  
                        ),  
                      ],  
                    ),  
                  ),  
                  // Bagian Kanan: Gambar  
                  Container(  
                    width: 100, // Atur lebar gambar sesuai kebutuhan  
                    height: 100, // Atur tinggi gambar sesuai kebutuhan  
                    decoration: BoxDecoration(  
                      image: DecorationImage(  
                        image: AssetImage("assets/wagyu steak.jpeg"), // Ganti dengan path gambar Anda  
                        fit: BoxFit.cover,  
                      ),  
                      borderRadius: BorderRadius.circular(8),  
                    ),  
                  ),  
                ],  
              ),  
            ),  
            const SizedBox(height: 20),  
            // Total di sebelah kanan  
            Row(  
              mainAxisAlignment: MainAxisAlignment.spaceBetween,  
              children: [  
                ElevatedButton(  
                  onPressed: () {  
                    // Tambahkan logika pembayaran di sini  
                  },  
                  child: const Text('Pay'),  
                  style: ElevatedButton.styleFrom(  
                    foregroundColor: Colors.black,  
                    backgroundColor: const Color(0xFFFFE710),  
                    padding: const EdgeInsets.symmetric(vertical: 15),  
                    textStyle: const TextStyle(fontSize: 18),  
                  ),  
                ),  
                Text(  
                  'Total: Rp.${totalPrice().toStringAsFixed(0)}',  
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),  
                ),  
              ],  
            ),  
          ],  
        ),  
      ), 
      bottomNavigationBar: const ButtomnavView(),
    );  
  }  
}  