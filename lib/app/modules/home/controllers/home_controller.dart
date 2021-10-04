import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:issuer/app/modules/about/views/about_view.dart';
import 'package:issuer/app/modules/article/views/article_view.dart';
import 'package:issuer/app/modules/tag/views/tag_view.dart';

class HomeController extends GetxController with SingleGetTickerProviderMixin {
  late TabController tc;

  var pageIndex = 0.obs;

  /// 页面: 手动触发刷新
  var tabs = [].obs;

  @override
  void onInit() {
    super.onInit();

    /// 页面数据刷新:
    tabs.assignAll([
      {
        'title': Text('Article'),
        'body': () => ArticleView(), // 测试页
      },
      {
        'title': Text('Tag'),
        'body': () => TagView(), // 测试页
      },
      {
        'title': Text('About'),
        'body': () => AboutView(), // 测试页
      },
    ]);

    ///
    tc = TabController(length: tabs.length, vsync: this);

    /// required!
    tc.addListener(() {
      print('change chain Tab index: ${tc.index}');

      /// do refresh:
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    tc.dispose();
    super.onClose();
  }
}
