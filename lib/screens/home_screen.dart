import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mini/controller/number_sum_controller.dart';
import 'package:flutter_mini/utils/dimensions.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';
import '../widgets/input_text_widget.dart';
import '../widgets/text_label.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: TextLabel(
            text: 'Flutter Mini',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            size: dimen16,
          )),
      body: GetBuilder<NumberSumController>(builder: (controller) {
        return Form(
          key: controller.inputFormKey,
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: dimen30, vertical: dimen20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextLabel(
                  text: 'Sum of between two inputs',
                  size: dimen20,
                  color: Colors.black,
                  maxLine: 2,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: dimen20),
                textField(
                    key: const Key('firstNumber'),
                    controller: controller.firstNumberController,
                    keyBoard: TextInputType.number,
                    hintText: 'Enter number',
                    obscureText: false,
                    inputFormatter: [
                      LengthLimitingTextInputFormatter(8),
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    ],
                    suffixIconData: null,
                    validatorMsg: 'Invalid number',
                    focusBorderColor: primaryColor),
                SizedBox(height: dimen20),
                textField(
                    key: const Key('secondNumber'),
                    controller: controller.secondNumberController,
                    keyBoard: TextInputType.number,
                    hintText: 'Enter number',
                    obscureText: false,
                    inputFormatter: [
                      LengthLimitingTextInputFormatter(8),
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    ],
                    suffixIconData: null,
                    validatorMsg: 'Invalid number',
                    focusBorderColor: primaryColor),
                SizedBox(height: dimen20),
                Container(
                  padding: EdgeInsets.symmetric(vertical: dimen10),
                  height: dimen30 * 2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                    ),
                    onPressed: () async{
                     await controller.sumNumbers();
                    },
                    child: TextLabel(
                      text: 'Show Result',
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
