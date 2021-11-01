import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/nav_controller.dart';

class NavView extends GetView<NavController> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NavView'),
        centerTitle: true,
      ),
      body: Center(
          child: ListView(
        controller: _scrollController, // fix
        shrinkWrap: true,
        children: [
          GridView.builder(
            shrinkWrap: true,
            //禁用滑动事件
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 6,
            ),
            itemBuilder: (context, index) {
              return Container(
                height: 5,
                color: Colors.primaries[index % Colors.primaries.length],
              );
            },
            itemCount: 50,
          ),
        ],
      )),
    );
  }
}
