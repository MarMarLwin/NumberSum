import 'package:flutter/material.dart';
import 'package:flutter_mini/controller/number_sum_controller.dart';
import 'package:flutter_mini/screens/home_screen.dart';
import 'package:flutter_mini/utils/colors.dart';
import 'package:flutter_mini/utils/dimensions.dart';
import 'package:flutter_mini/utils/routes.dart';
import 'package:get/get.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.lazyPut(() => NumberSumController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: primaryThemeColor,
      ),
      home: const HomeScreen(),
      getPages: RouteHelper.routes,
    );
  }
}
