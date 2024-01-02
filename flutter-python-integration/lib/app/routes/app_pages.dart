import 'package:get/get.dart';

import '../modules/fibonacci/bindings/fibonacci_binding.dart';
import '../modules/fibonacci/views/fibonacci_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/multiply/bindings/multiply_binding.dart';
import '../modules/multiply/views/multiply_view.dart';
import '../modules/prime/bindings/prime_binding.dart';
import '../modules/prime/views/prime_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      children: [
        GetPage(
          name: _Paths.HOME,
          page: () => const HomeView(),
          binding: HomeBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.MULTIPLY,
      page: () => const MultiplyView(),
      binding: MultiplyBinding(),
    ),
    GetPage(
      name: _Paths.FIBONACCI,
      page: () => const FibonacciView(),
      binding: FibonacciBinding(),
    ),
    GetPage(
      name: _Paths.PRIME,
      page: () => const PrimeView(),
      binding: PrimeBinding(),
    ),
  ];
}
