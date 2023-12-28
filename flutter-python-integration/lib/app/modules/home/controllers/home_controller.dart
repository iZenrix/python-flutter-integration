import 'package:flutter/material.dart';
import 'package:flutter_python_integration/app/modules/home/providers/multiply_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();

  var isLoading = true.obs;

  var result = 0.obs;

  Future<void> multiply () async{
    try{
      isLoading(true);
      var num1 = int.parse(number1.text);
      var num2 = int.parse(number2.text);
      var multiplyProvider = MultiplyProvider();
      result.value = await multiplyProvider.multiply(num1, num2);
    } finally {
      isLoading(false);
    }
  }
}
