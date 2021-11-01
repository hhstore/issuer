import 'package:flutter/material.dart';

import '/app/modules/index.dart';
import '../controllers/article_controller.dart';

class ArticleView extends GetView<ArticleController> with UtilsMixin {
  @override
  Widget build(BuildContext context) {
    print('issues length: ${controller.issues.length}');

    return Scaffold(
      appBar: AppBar(
        title: Text('ArticleView'),
        centerTitle: true,
      ),
      body: ListView(
        controller: controller.sc,
        shrinkWrap: true,
        children: [
          Obx(
            () => withScrollbar(
              controller: controller.sc,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: controller.issues.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(
                      Icons.favorite,
                      color: Get.theme.primaryColor,
                    ),
                    title: Text('${controller.issues[index].title}'),
                    subtitle: Text('sub title'),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                      color: Get.theme.primaryColor,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
