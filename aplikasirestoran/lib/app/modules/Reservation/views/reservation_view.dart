import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/reservation_controller.dart';

class ReservationView extends GetView<ReservationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reserve Your Table'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Guest',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: controller.decrementGuest,
                  icon: const Icon(Icons.remove),
                ),
                Obx(() => Text(
                      '${controller.guestCount.value}',
                      style: const TextStyle(fontSize: 32),
                    )),
                IconButton(
                  onPressed: controller.incrementGuest,
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Date',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) {
                final date = index + 4; // Date 4, 5, 6, 7 Juni
                return Obx(() => ChoiceChip(
                      label: Text('$date JUNI'),
                      selected: controller.selectedDate.value == date,
                      onSelected: (selected) {
                        controller.selectDate(date);
                      },
                    ));
              }),
            ),
            const SizedBox(height: 20),
            const Text(
              'Seat',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: 15,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemBuilder: (context, index) {
                return Obx(() => GestureDetector(
                      onTap: () {
                        if (controller.seats[index].value) {
                          controller.reserveSeat(index);
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: controller.seats[index].value
                              ? Colors.grey // Available seat
                              : Colors.yellow, // Reserved seat
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Center(
                          child: Text(
                            '${index + 1}',
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ));
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_seat),
            label: 'Reservation',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 2, // Selected index for Reservation
        onTap: (index) {
          // Add navigation logic here
        },
      ),
    );
  }
}
