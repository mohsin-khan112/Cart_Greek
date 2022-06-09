
import 'package:cart_greek_assignment/view/main_screen/main_screen.dart';
import 'package:get/get.dart';

class Routes {
  static const firstScreen = '/firstScreen';
}

class AppPages {
  static final pages = <GetPage>[
    GetPage(
      name: Routes.firstScreen,
      page: () => const MainScreen(),
    ),
  ];
}
