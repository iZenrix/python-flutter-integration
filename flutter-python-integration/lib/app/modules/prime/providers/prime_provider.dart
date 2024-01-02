import 'dart:convert';

import 'package:flutter_python_integration/app/core/value/constant.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class PrimeProvider extends GetConnect {
  Future<dynamic> primeNumber(int n) async {
    final response = await http.get(
      Uri.parse("$primeUrl?n=$n"),
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
