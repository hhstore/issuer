import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:github/github.dart';
import 'package:url_launcher/url_launcher.dart';

mixin UtilsMixin {
  void envLoad({String? filename}) async {
    await dotenv.load(fileName: filename ?? '.env');
    print('env[github token]=${envGet('GITHUB_API_TOKEN')}');
  }

  String? envGet(String name) => dotenv.get(name, fallback: null);

  GitHub githubClient({String? token}) {
    const cliToken = String.fromEnvironment('GITHUB_API_TOKEN');
    print('cli args: ${cliToken}');
    token = token ?? cliToken;

    var envToken = envGet('GITHUB_API_TOKEN');

    /// hack here!
    token = (token != 'GITHUB_API_TOKEN') ? token : envToken;
    print('env from github action: $token, $cliToken, $envToken');

    return GitHub(auth: Authentication.withToken(token));
  }

  ///
  /// jump to:
  ///
  Future<void> launchUrl(String url) async => await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
}
