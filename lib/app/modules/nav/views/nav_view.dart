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
              crossAxisCount: 10,
              childAspectRatio: 1.5,
            ),
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(10),
                child: InkWell(
                  child: Center(
                    child: Card(
                      color: Colors.purpleAccent,
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
