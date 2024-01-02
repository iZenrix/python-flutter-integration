import 'package:flutter/material.dart';
import 'package:flutter_python_integration/app/modules/prime/providers/prime_provider.dart';
import 'package:get/get.dart';

class PrimeController extends GetxController {
  TextEditingController request = TextEditingController();
  var isLoading = false.obs;
  var result = [].obs;

  Future<void> multiply () async{
    try{
      isLoading(true);
      var n = int.parse(request.text);
      var primeProvider = PrimeProvider();
      result.value = await primeProvider.primeNumber(n);
    } finally {
      isLoading(false);
    }
  }
}
