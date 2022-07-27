import 'package:food_delivery_app/ui/screens/home_screen.dart';
import 'package:get/get.dart';

class RouteNames {
  static String home = '/home';
}

class AppRoute {
  static final route = [
    GetPage(
      name: RouteNames.home,
      page: () => HomePage(),
      transition: Transition.cupertino,
    ),
  ];
}
