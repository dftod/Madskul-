import 'package:get/get.dart';

import '../modules/ekskul/bindings/ekskul_binding.dart';
import '../modules/ekskul/views/ekskul_view.dart';
import '../modules/ekskul_detail/bindings/ekskul_detail_binding.dart';
import '../modules/ekskul_detail/views/ekskul_detail_view.dart';
import '../modules/homepage/bindings/homepage_binding.dart';
import '../modules/homepage/views/homepage_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/welcome/bindings/welcome_binding.dart';
import '../modules/welcome/views/welcome_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => const WelcomeScreen(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.HOMEPAGE,
      page: () => const HOMEPAGE(),
      binding: HomepageBinding(),
    ),
    GetPage(
      name: _Paths.EKSKUL,
      page: () => const EkskulView(),
      binding: EkskulBinding(),
    ),
    GetPage(
      name: _Paths.EKSKUL_DETAIL,
      page: () => const EkskulDetailView(),
      binding: EkskulDetailBinding(),
    ),
  ];
}
