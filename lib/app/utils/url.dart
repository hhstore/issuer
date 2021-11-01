import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:url_launcher/url_launcher.dart';

mixin UtilsMixin {
  void envLoad({String? filename}) async {
    await dotenv.load(fileName: filename ?? '.env');
    print('env[github token]=${envGet('GITHUB_API_TOKEN')}');
  }

  String? envGet(String name) => dotenv.get(name, fallback: null);

  ///
  /// jump to:
  ///
  Future<void> launchUrl(String url) async => await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
}
