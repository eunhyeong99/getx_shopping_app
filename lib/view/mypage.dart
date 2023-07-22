import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_shopping_app/controller/controller.dart';
import 'package:getx_shopping_app/view/product_tile.dart';

class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);
  final Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop'),
        backgroundColor: Colors.black87,
        elevation: 0.0,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.view_list_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
          child: Obx(
            () => GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return ProductTile(
                  controller.productList[index],
                );
              },
              itemCount: controller.productList.length,
            ),
          ),
        ),
      ),
    );
  }
}
