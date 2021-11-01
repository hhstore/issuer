import 'package:get/get.dart';

import 'package:issuer/app/modules/about/bindings/about_binding.dart';
import 'package:issuer/app/modules/about/views/about_view.dart';
import 'package:issuer/app/modules/article/bindings/article_binding.dart';
import 'package:issuer/app/modules/article/views/article_view.dart';
import 'package:issuer/app/modules/home/bindings/home_binding.dart';
import 'package:issuer/app/modules/home/views/home_view.dart';
import 'package:issuer/app/modules/nav/bindings/nav_binding.dart';
import 'package:issuer/app/modules/nav/views/nav_view.dart';
import 'package:issuer/app/modules/tag/bindings/tag_binding.dart';
import 'package:issuer/app/modules/tag/views/tag_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ARTICLE,
      page: () => ArticleView(),
      binding: ArticleBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => AboutView(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: _Paths.TAG,
      page: () => TagView(),
      binding: TagBinding(),
    ),
    GetPage(
      name: _Paths.NAV,
      page: () => NavView(),
      binding: NavBinding(),
    ),
  ];
}
