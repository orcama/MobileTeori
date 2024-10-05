import 'package:aplikasirestoran/app/modules/logRegis/bindings/logregis_binding.dart';
import 'package:aplikasirestoran/app/modules/logRegis/views/logregis_view.dart';
import 'package:aplikasirestoran/app/modules/login/bindings/login_binding.dart';
import 'package:aplikasirestoran/app/modules/login/views/login_view.dart';
import 'package:aplikasirestoran/app/modules/register/bindings/register_binding.dart';
import 'package:aplikasirestoran/app/modules/register/views/register_view.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

//profile
import '../modules/Profile/binding.dart/profile_binding.dart';
import '../modules/Profile/views/profile_view.dart';

//register
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

//reservation
import '../modules/Reservation/bindings/reservation_binding.dart';
import '../modules/Reservation/views/reservation_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.LOGREGIS,
      page: () => const LogregisView(),
      binding: LogregisBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),

    //profile
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),

    //reservation
    GetPage(
      name: _Paths.RESERVATION,
      page: () => ReservationView(),
      binding: ReservationBinding(),
    ),
  ];
}
