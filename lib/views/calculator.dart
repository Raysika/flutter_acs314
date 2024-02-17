import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:test_drive/views/customtext.dart';
import 'package:test_drive/views/customtextfield.dart';
import 'package:test_drive/controllers/calculatorcontroller.dart';

class Calculator extends StatelessWidget {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  TextEditingController nameController = TextEditingController();
  CalculatorController calculatorController = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(children: [
            Text("Enter Your Name Here:"),
            customTextField(userFieldController: nameController),
            const SizedBox(height: 10),
            customTextField(userFieldController: num1Controller),
            const SizedBox(
              height: 10,
            ),
            customTextField(userFieldController: num2Controller),
            const SizedBox(
              height: 10,
            ),
            //CustomButton(
            //labelButton: "Calculator",
            ElevatedButton(
                onPressed: () {
                  double a = double.parse(num1Controller.text);
                  double b = double.parse(num2Controller.text);
                  String name = nameController.text;
                  calculatorController.updateName(name);

                  calculatorController.updateValues(a, b);

                  double s = a + b;
                  calculatorController.updateSum(s);
                },
                child: Text("Calculate")),
            const SizedBox(height: 10),
            Obx(() => customtitleText(
                label:
                    "Hello ${calculatorController.name} ,The sum of ${calculatorController.a} and ${calculatorController.b} is ${calculatorController.sum}")),
          ])),
    );
  }
}
