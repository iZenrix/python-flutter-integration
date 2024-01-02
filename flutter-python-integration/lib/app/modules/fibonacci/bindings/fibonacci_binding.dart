import 'package:get/get.dart';

import '../controllers/fibonacci_controller.dart';

class FibonacciBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FibonacciController>(
      () => FibonacciController(),
    );
  }
}
