import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/nav_controller.dart';

class NavView extends GetView<NavController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NavView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'NavView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
