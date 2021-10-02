import 'package:get/get.dart';
import 'package:github/github.dart';

class GithubService extends GetxService {
  static GithubService get to => Get.find();

  GitHub github = GitHub(auth: findAuthenticationFromEnvironment());

  void issues() async {
    await github.issues.listByRepo(RepositorySlug('hhstore', 'blog')).toList().then((value) => null);
  }
}
