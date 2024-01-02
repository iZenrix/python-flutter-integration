import 'package:get/get.dart';

import '../controllers/prime_controller.dart';

class PrimeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PrimeController>(
      () => PrimeController(),
    );
  }
}
