import 'package:get/get.dart';
import 'package:issuer/app/modules/about/controllers/about_controller.dart';
import 'package:issuer/app/modules/article/controllers/article_controller.dart';
import 'package:issuer/app/modules/nav/controllers/nav_controller.dart';
import 'package:issuer/app/modules/tag/controllers/tag_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ArticleController>(ArticleController(), permanent: true);
    Get.lazyPut<NavController>(() => NavController());
    Get.lazyPut<TagController>(() => TagController());
    Get.lazyPut<AboutController>(() => AboutController());

    Get.lazyPut<HomeController>(() => HomeController());
  }
}
