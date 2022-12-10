/*
import 'package:flutter/material.dart';
import 'package:flutter_mini/controller/number_sum_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

class InputForm {
  const InputForm(this.tester);

  final WidgetTester tester;

  Future<void> enterFirstNumber() async {
    final Finder firstNumber = find.byType(TextFormField);
    await tester.enterText(firstNumber, "1");

    final Finder submitBtn = find.text("Show Result");
    await tester.tap(submitBtn);
    await tester.pump(const Duration(seconds: 5));
    await tester.pump(const Duration(seconds: 1));
  }
  Future<void> enterSecondNumber() async {
    final Finder secondNumber = find.byType(TextFormField);
    await tester.enterText(secondNumber, "5");

    final Finder submitBtn = find.text("Show Result");
    await tester.tap(submitBtn);
    await tester.pump(const Duration(seconds: 5));
    await tester.pump(const Duration(seconds: 1));
  }
}

void main() {
  //InputForm inputForm;
  Get.lazyPut(() => NumberSumController());
  var controller=NumberSumController();
  testWidgets('Sum of integers', (WidgetTester tester) async {
  // inputForm=InputForm(tester);
  */
/* await tester.pumpAndSettle(const Duration(seconds: 5));

   inputForm.enterFirstNumber();
   inputForm.enterSecondNumber();*//*

   final Finder firstNumber = find.byKey(const Key('firstNumber'));
   await tester.enterText(firstNumber, "1");

   */
/* final Finder secondNumber = find.byType(TextFormField);
    await tester.enterText(secondNumber, "5");

    final Finder submitBtn = find.text("Show Result");
    await tester.tap(submitBtn);
    await tester.pump(const Duration(seconds: 5));
    await tester.pump(const Duration(seconds: 1));*//*


   expect(controller.sumNumbers(),15);
  });
}*/


import 'package:flutter/cupertino.dart';
import 'package:flutter_mini/controller/number_sum_controller.dart';
import 'package:flutter_mini/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';


void main() {
  Get.lazyPut(() => NumberSumController());
  var controller=NumberSumController();
  testWidgets('Sum integers', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    Finder firstNumber = find.byKey(const Key('firstNumber'));
    await tester.enterText(firstNumber, "1");
    Finder secondNumber = find.byKey(const Key('secondNumber'));
    await tester.enterText(secondNumber, "10");

    await tester.tap(find.text("Show Result"));
    await tester.pump();
    await controller.sumNumbers();
    expect(controller.result,55);


  });
}