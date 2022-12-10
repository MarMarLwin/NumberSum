import 'package:flutter_mini/screens/result_screen.dart';
import 'package:get/get.dart';
import '../screens/home_screen.dart';

class RouteHelper {
  static String initial = '/home';
  static String result = '/result';

  static String getInitial() => initial;

  static String getResultScreen() => result;
  static List<GetPage> routes = [
    GetPage(
        name: initial,
        page: () {
          return const HomeScreen();
        },
        transition: Transition.native,
        transitionDuration: const Duration(milliseconds: 500)),
    GetPage(
        name: result,
        page: () {
          return const ResultScreen();
        },
        transition: Transition.native,
        transitionDuration: const Duration(milliseconds: 500))
  ];
}
