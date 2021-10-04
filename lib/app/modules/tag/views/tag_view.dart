import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tag_controller.dart';

class TagView extends GetView<TagController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TagView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TagView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
