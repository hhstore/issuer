import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:github/github.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';

mixin UtilsMixin {
  Widget withScrollbar({
    required ScrollController controller,
    Widget? child,
    int? itemCount,
    IndexedWidgetBuilder? itemBuilder,
    Axis? scrollDirection,
  }) {
    return VsScrollbar(
      controller: controller,
      showTrackOnHover: true,
      // default false
      isAlwaysShown: true,
      // default false
      scrollbarFadeDuration: Duration(milliseconds: 500),
      // default : Duration(milliseconds: 300)
      scrollbarTimeToFade: Duration(milliseconds: 800),
      // default : Duration(milliseconds: 600)
      style: VsScrollbarStyle(
        hoverThickness: 10.0, // default 12.0
        radius: Radius.circular(10), // default Radius.circular(8.0)
        thickness: 10.0, // [ default 8.0 ]
        color: Colors.purple.shade900, // default ColorScheme Theme
      ),
      child: child ??
          ListView.builder(
            controller: controller,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            scrollDirection: scrollDirection ?? Axis.vertical,

            ///
            itemCount: itemCount,

            ///
            itemBuilder: itemBuilder!,
          ),
    );
  }

  void envLoad({String? filename}) async {
    await dotenv.load(fileName: filename ?? '.env');
    print('env[github token]=${envGet('GITHUB_API_TOKEN')}');
  }

  String? envGet(String name) => dotenv.get(name, fallback: null);

  GitHub githubClient({String? token}) {
    const cliToken = String.fromEnvironment('GITHUB_API_TOKEN');
    token = token ?? cliToken;
    print('cli args: GITHUB_API_TOKEN=${cliToken}, token=$token');
    return GitHub(auth: Authentication.withToken(token));
  }

  ///
  /// jump to:
  ///
  Future<void> launchUrl(String url) async => await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
}
