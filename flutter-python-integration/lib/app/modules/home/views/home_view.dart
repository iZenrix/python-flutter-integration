import 'package:flutter/material.dart';
import 'package:flutter_python_integration/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Python Integration App'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.MULTIPLY);
                },
                child: const Text("Multiply 2 Number"),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.FIBONACCI);
                },
                child: const Text("Fibonacci Number Series"),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.PRIME);
                },
                child: const Text("Series of Prime Numbers"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
