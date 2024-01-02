import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/fibonacci_controller.dart';

class FibonacciView extends GetView<FibonacciController> {
  const FibonacciView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prime'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Form(
              child: Column(
            children: <Widget>[
              TextFormField(
                style: const TextStyle(color: Colors.black87),
                decoration: const InputDecoration(
                  labelText: 'Number 1',
                  hintText: 'Number 1',
                ),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                controller: controller.request,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                onPressed: () async {
                  controller.multiply();
                },
                child: const Center(
                  child: Text(
                    "submit",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Obx(
                () => controller.isLoading.value
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Text(
                        "Result = ${controller.result}",
                      ),
              ),
            ],
          )),
        )),
      ),
    );
  }
}
