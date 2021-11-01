import 'package:flutter/material.dart';

import '../../index.dart';
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
              crossAxisCount: GetPlatform.isMobile ? 4 : 6,
              childAspectRatio: GetPlatform.isMobile ? 1.3 : 2,
            ),
            itemBuilder: (context, index) {
              return Container(
                child: InkWell(
                  child: Center(
                    child: Card(
                      color: Colors.greenAccent,
                      child: Column(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                          Text('bit query').asNiku().color(Colors.white),
                        ],
                      ),
                    ),
                  ),
                  onTap: () async => await controller.launchUrl('https://explorer.bitquery.io/'),
                ),
              );
            },
            itemCount: 40,
          ),
        ],
      )),
    );
  }
}
