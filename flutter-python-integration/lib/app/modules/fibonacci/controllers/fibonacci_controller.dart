import 'package:flutter/material.dart';
import 'package:flutter_python_integration/app/modules/fibonacci/providers/fibonacci_provider.dart';
import 'package:get/get.dart';

class FibonacciController extends GetxController {
  TextEditingController request = TextEditingController();
  var isLoading = false.obs;
  var result = [].obs;

  Future<void> multiply () async{
    try{
      isLoading(true);
      var n = int.parse(request.text);
      var fibonacciProvider = FibonacciProvider();
      result.value = await fibonacciProvider.fibonacci(n);
    } finally {
      isLoading(false);
    }
  }
}
