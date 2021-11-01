import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

import 'app/data/index.dart';
import 'app/routes/app_pages.dart';

void main() async {
  await dotenv.load(fileName: '.env');

  print('env[github token]: ${dotenv.maybeGet('GITHUB_API_TOKEN')}');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Github issue Blog",
      enableLog: true,
      debugShowCheckedModeBanner: false,

      /// 主题配色:
      theme: appThemeData[AppTheme.yellowLight],
      darkTheme: appThemeData[AppTheme.yellowDark],

      /// locales:
      translationsKeys: AppTranslation.translations,
      locale: Get.deviceLocale,
      fallbackLocale: Locale('en', 'US'),

      /// register:
      initialBinding: BindingsBuilder(
        () async {
          var s = Get.put<GithubService>(GithubService());

          await s.issues();
        },
      ),

      /// entry:
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
