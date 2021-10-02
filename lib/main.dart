import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:issuer/app/data/services/github.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Github issue Blog",

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
