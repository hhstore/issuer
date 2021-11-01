import 'package:flutter/material.dart';

import '/app/modules/index.dart';
import '../controllers/article_controller.dart';

class ArticleView extends GetView<ArticleController> {
  @override
  Widget build(BuildContext context) {
    print('issues length: ${controller.issues.length}');

    return Scaffold(
      appBar: AppBar(
        title: Text('ArticleView'),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Obx(
            () => ListView.builder(
              shrinkWrap: true,
              itemCount: controller.issues.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(
                    Icons.favorite,
                    color: Get.theme.primaryColor,
                  ),
                  title: Text('${controller.issues[index].title.substring(0, 5)}'),
                  subtitle: Text('sub title'),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Get.theme.primaryColor,
                  ),
                );
              },
            ),
          ),

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
