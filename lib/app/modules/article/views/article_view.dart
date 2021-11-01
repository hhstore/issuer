import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:niku/niku.dart';

import '../controllers/article_controller.dart';

class ArticleView extends GetView<ArticleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ArticleView'),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          ///
          ///
          ///
          ListView(
            shrinkWrap: true,
            children: [
              Text('目录').asNiku().center(),
              ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: Get.theme.primaryColor,
                ),
                title: Text('title'),
                subtitle: Text('sub title'),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: Get.theme.primaryColor,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: Get.theme.primaryColor,
                ),
                title: Text('title'),
                subtitle: Text('sub title'),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: Get.theme.primaryColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
