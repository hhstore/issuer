import '/app/modules/index.dart';

class GithubService extends GetxService with UtilsMixin {
  static GithubService get to => Get.find();

  ///
  ///
  ///
  Future<void> issues() async {
    var github = githubClient();

    var issues = await github.issues.listByRepo(RepositorySlug('hhstore', 'blog')).toList().then((value) {
      print('issue count: ${value.length}');

      // for (var item in value) {
      //   print('listByRepo: issue.title: ${item.commentsCount}, ${item.id}, ${item.number}');
      // }
    });
  }
}
