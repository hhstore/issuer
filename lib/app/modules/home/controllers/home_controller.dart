import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:issuer/app/modules/about/views/about_view.dart';

class HomeController extends GetxController {
  var pageIndex = 0.obs;

  /// 页面: 手动触发刷新
  var tabs = <Widget>[].obs;

  @override
  void onInit() {
    super.onInit();

    /// 页面数据刷新:
    tabs.assignAll([
      AboutView(),
    ]);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
