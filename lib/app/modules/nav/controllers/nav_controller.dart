import 'package:get/get.dart';
import 'package:issuer/app/utils/url.dart';

class NavController extends GetxController with UtilsMixin {
  //TODO: Implement NavController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
