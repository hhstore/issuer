import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:issuer/app/modules/about/views/about_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => DefaultTabController(
        length: controller.tabs.length,
        child: Scaffold(
          ///
          drawer: Drawer(
            child: AboutView(),
          ),

          ///
          appBar: AppBar(
            title: TabBar(
              tabs: controller.tabs.map((e) => e['title'] as Widget).toList(),
            ),
            centerTitle: true,

            ///
            actions: [
              Icon(Icons.search),
            ],
          ),

          ///
          body: TabBarView(
            children: controller.tabs.map((e) => e['body']() as Widget).toList(),
          ),
        ),
      ),
    );
  }
}
