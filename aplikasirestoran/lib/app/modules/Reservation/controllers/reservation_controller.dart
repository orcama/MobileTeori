import 'package:get/get.dart';

class ReservationController extends GetxController {
  // Menyimpan jumlah tamu yang direservasi
  var guestCount = 0.obs;

  // Menyimpan tanggal yang dipilih
  var selectedDate = 4.obs; // Misalnya default tanggal 4 Juni

  // Menyimpan status ketersediaan tempat duduk
  var seats = List.generate(15, (index) => true.obs); // true berarti available

  // Fungsi untuk menambah atau mengurangi jumlah tamu
  void incrementGuest() => guestCount++;
  void decrementGuest() {
    if (guestCount > 0) guestCount--;
  }

  // Fungsi untuk memilih tanggal
  void selectDate(int date) {
    selectedDate.value = date;
  }

  // Fungsi untuk memesan kursi (seat)
  void reserveSeat(int index) {
    seats[index].value = false; // false berarti reserved
  }
}
