import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var a = 0.0.obs;
  var b = 0.0.obs;
  var sum = 0.0.obs;
  var name = "".obs;
  updateSum(newSum) {
    sum.value = newSum;
  }

  updateValues(a, b) {
    this.a.value = a;
    this.b.value = b;
  }

  updateName(newName) {
    name.value = newName;
  }
}
