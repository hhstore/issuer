import 'package:get/get.dart';
import 'package:github/github.dart';
import 'package:issuer/app/utils/url.dart';

///
///
///
class ArticleController extends GetxController with UtilsMixin {
  final issueNum = 0.obs;
  final issues = <Issue>[].obs;

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

  ///
  void getArticles() async {
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
