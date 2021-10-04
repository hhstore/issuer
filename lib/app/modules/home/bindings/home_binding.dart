import 'package:get/get.dart';
import 'package:issuer/app/modules/about/controllers/about_controller.dart';
import 'package:issuer/app/modules/article/controllers/article_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ArticleController>(() => ArticleController());
    Get.lazyPut<AboutController>(() => AboutController());

    Get.lazyPut<HomeController>(() => HomeController());
  }
}
