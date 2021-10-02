import 'package:flutter_test/flutter_test.dart';
import 'package:github/github.dart';

void main() {
  late GitHub github;

  /// hook:
  setUp(() {
    github = GitHub(auth: findAuthenticationFromEnvironment());
  });

  /// case1:
  test('user service: demo user', () async {
    var issues = await github.issues.listByRepo(RepositorySlug('hhstore', 'blog')).toList().then((value) {
      for (var item in value) {
        /// print blog title:
        print(item.title);
      }
    });
  });
}
