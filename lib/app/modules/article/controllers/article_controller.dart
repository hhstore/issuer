import 'package:flutter/material.dart';

import '/app/modules/index.dart';

///
///
///
class ArticleController extends GetxController with UtilsMixin {
  ScrollController sc = ScrollController();

  final issueNum = 0.obs;
  final issues = <Issue>[].obs;

  @override
  void onInit() async {
    super.onInit();

    await getArticles();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  ///
  Future<void> getArticles() async {
    var cli = githubClient();

    var ret = await cli.issues.listByRepo(RepositorySlug('hhstore', 'blog')).toList().then((value) {
      issueNum.value = value.length;

      issues.assignAll(value);

      print('issue count: ${value.length}');

      // for (var item in value) {
      //   print('listByRepo: issue.title: ${item.commentsCount}, ${item.id}, ${item.number}');
      // }
    });
  }
}
