import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => DefaultTabController(
        length: controller.tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: TabBar(
              tabs: controller.tabs.map((e) => e['title'] as Widget).toList(),
            ),
            centerTitle: true,
          ),
          body: TabBarView(
            children: controller.tabs.map((e) => e['body']() as Widget).toList(),
          ),
        ),
      ),
    );
  }
}
