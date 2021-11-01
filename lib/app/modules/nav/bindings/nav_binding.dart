import 'package:get/get.dart';

import '../controllers/nav_controller.dart';

class NavBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavController>(
      () => NavController(),
    );
  }
}
