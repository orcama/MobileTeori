import 'package:aplikasirestoran/app/modules/logRegis/bindings/logregis_binding.dart';
import 'package:aplikasirestoran/app/modules/logRegis/views/logregis_view.dart';
import 'package:aplikasirestoran/app/modules/register/bindings/register_binding.dart';
import 'package:aplikasirestoran/app/modules/register/views/register_view.dart';
import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.REGISTER;

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
  ];
}
