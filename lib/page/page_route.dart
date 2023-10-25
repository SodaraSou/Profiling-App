import 'package:get/get.dart';
import 'package:profiling_app/page/xcore.dart';

class PageRouter {
  static const String home = '/';
  static const String signUp = '/signUp';
  static const String signIn = '/signIn';
  static const String setting = '/setting';

  static final pages = [
    GetPage(
      name: home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: signIn,
      page: () => const SignInView(),
    ),
    GetPage(
      name: signUp,
      page: () => const SignUpView(),
    ),
    GetPage(
      name: setting,
      page: () => const SettingView(),
    )
  ];
}
