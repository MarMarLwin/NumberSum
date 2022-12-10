import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/routes.dart';

class NumberSumController extends GetxController {
  TextEditingController firstNumberController = TextEditingController();
  TextEditingController secondNumberController = TextEditingController();
  final inputFormKey = GlobalKey<FormState>();
  int result = 0;

  Future<void> sumNumbers() async {
    try {
      result = 0;

     if(inputFormKey.currentState!.validate()){
       Get.toNamed(RouteHelper.result);
       var firstNumber = int.parse(firstNumberController.text);
       var secondNumber = int.parse(secondNumberController.text);

       if (firstNumber < secondNumber) {
         for (int i = firstNumber; i <= secondNumber; i++) {
           result += i;
         }
       } else {
         for (int i = secondNumber; i <= firstNumber; i++) {
           result += i;
         }
       }
     }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
