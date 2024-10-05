import 'package:get/get.dart';
import '../controllers/reservation_controller.dart';

class ReservationBinding extends Bindings {
  @override
  void dependencies() {
    // Menghubungkan ReservationController ke halaman yang membutuhkan
    Get.lazyPut<ReservationController>(() => ReservationController());
  }
}
