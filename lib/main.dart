import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/data/index.dart';
import 'app/routes/app_pages.dart';

void main() {
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
        () {
          Get.put(GithubService());
        },
      ),

      /// entry:
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
