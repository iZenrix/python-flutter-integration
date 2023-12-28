import 'dart:convert';

import 'package:flutter_python_integration/app/core/value/constant.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class MultiplyProvider extends GetConnect {
  Future<int> multiply(int num1, int num2) async {
    final response = await http.get(
      Uri.parse("$multiplyUrl?number1=$num1&number2=$num2"),
      headers: {
        'Accept': 'application/json'
      },
    );
    print('Status code: ${response.statusCode}');
    print('Response body: ${response.body}');
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load number');
    }
  }
}
