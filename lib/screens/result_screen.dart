import 'package:flutter/material.dart';
import 'package:flutter_mini/controller/number_sum_controller.dart';
import 'package:flutter_mini/utils/dimensions.dart';
import 'package:flutter_mini/widgets/text_label.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextLabel(text: 'Result',color: Colors.white,fontWeight: FontWeight.bold, size: dimen16,),
      ),
      body: GetBuilder<NumberSumController>(
        builder: (controller) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextLabel(text:'The result is :',size: dimen20,color: Colors.black,fontWeight: FontWeight.bold),
                SizedBox(height: dimen20),
                TextLabel(text: controller.result.obs.toString(),size: dimen50,color: primaryColor),
                SizedBox(height: dimen20),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: dimen20,vertical: dimen10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: TextLabel(
                      text: 'Back',
                      color: Colors.white,
                    ),
                  ),
                ),

              ],
            ),
          );
        }
      ),
    );
  }
}
