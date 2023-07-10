// ignore_for_file: unused_local_variable, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_app/controller/productcontroller.dart';
import 'package:tech_app/core/class/handlindatview.dart';

import '../../../model/product.dart';
import '../../widgets/customproduct.dart';

class Productscreen extends StatelessWidget {
  const Productscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductControllerImp controller = Get.put(ProductControllerImp());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.abc),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Container(
        child: ListView(children: [
          InkWell(
            onTap: () {
              // controller.goToPageProductDetails(Product: product);
            },
            child: GetBuilder<ProductControllerImp>(
                builder: (controller) => HandlingDataView(
                    statusRequest: controller.statusrequst,
                    widget: GridView.builder(
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 1.0,
                          mainAxisSpacing: 1.0,
                          childAspectRatio: 0.65,
                        ),
                        itemCount: controller.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Itemcard(
                            product: Product.fromJson(controller.data[index]),
                          );
                        }))),
          ),
        ]),
      ),
    );
  }
}
