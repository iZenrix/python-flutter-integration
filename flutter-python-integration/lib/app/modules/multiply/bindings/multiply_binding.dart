import 'package:get/get.dart';

import '../controllers/multiply_controller.dart';

class MultiplyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MultiplyController>(
      () => MultiplyController(),
    );
  }
}
