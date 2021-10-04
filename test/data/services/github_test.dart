import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github/github.dart';

void main() {
  late GitHub github;

  /// hook:
  setUp(() {
    print('Current Dir: ${Directory.current.toString()}');
    // Loading from a file synchronously.
    dotenv.testLoad(fileInput: File('test/.env').readAsStringSync());

    var token = dotenv.get('GITHUB_API_TOKEN');
    print('api token: ${token}');

    github = GitHub(auth: Authentication.withToken(token));
  });

  /// listByRepo:
  test('issue - listByRepo', () async {
    var issues = await github.issues.listByRepo(RepositorySlug('hhstore', 'blog')).toList().then((value) {
      for (var item in value) {
        /// print blog title:
        print('listByRepo: issue.title: ${item.commentsCount}, ${item.id}, ${item.number}');
      }
    });
  });

  /// get
  test('issue - get', () async {
    var issues = await github.issues.get(RepositorySlug('hhstore', 'blog'), 1).then((value) {
      print('get: issue: ${value.body}');
    });
  });

  /// listLabels:
  test('issue - listLabels', () async {
    var issues = await github.issues.listLabels(RepositorySlug('hhstore', 'blog')).toList().then((value) {
      for (var item in value) {
        /// print blog label:
        print('label: ${item.name}, ${item.color}');
      }
    });
  });

  /// listCommentsByIssue
  test('issue - getComment', () async {
    var ret = await github.issues.getComment(RepositorySlug('hhstore', 'blog'), 2).then((value) {
      print('getComment: ${value.body}');
    });

    print('getComment: ${ret}');
  });

  /// listCommentsByIssue
  test('issue - listCommentsByIssue', () async {
    var issues = await github.issues.listCommentsByIssue(RepositorySlug('hhstore', 'blog'), 215).toList().then((value) {
      for (var item in value) {
        /// print blog label:
        print('label: ${item.body}');
      }
    });
  });

  test('issue - listCommentsByIssue', () async {
    var issues = await github.issues.listCommentsByIssue(RepositorySlug('hhstore', 'blog'), 10).toList().then((value) {
      for (var item in value) {
        /// print blog label:
        print('label: ${item.body}');
      }
    });
  });

  /// listLabels
}
