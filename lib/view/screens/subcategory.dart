// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_app/core/class/handlindatview.dart';

import '../../controller/subcategorycontroller.dart';
import '../../model/subcategory.dart';
import '../widgets/catcard.dart';

class Subcategory extends StatelessWidget {
  const Subcategory({super.key});

  @override
  Widget build(BuildContext context) {
    SubcatControllerImp controller = Get.put(SubcatControllerImp());
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              const MyWidget(),
              GetBuilder<SubcatControllerImp>(
                  builder: (controller) => HandlingDataView(
                      statusRequest: controller.statusrequst,
                      widget: InkWell(
                        onTap: () {},
                        child: SizedBox(
                          height: 100,
                          width: double.infinity,
                          child: GridView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              physics: const ScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 1,
                                      mainAxisSpacing: 0.20,
                                      childAspectRatio: 1.30),
                              itemCount: controller.data.length,
                              itemBuilder: (context, i) {
                                return Subcat(
                                    subcategories: Subcategories.fromJson(
                                        controller.data[i]),
                                    i: i);
                              }),
                        ),
                      ))),
            ],
          ),
        ));
  }
}

// ignore: must_be_immutable
class Subcat extends GetView<SubcatControllerImp> {
  final Subcategories subcategories;
  int? i;
  Subcat({super.key, required this.subcategories, required this.i});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goTproduct(controller.category, i!, subcategories.subId!);
      },
      child: SizedBox(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(subcategories.image!))),
              ),
            ),
            Text(subcategories.subcatName!)
          ],
        ),
      ),
    );
  }
}
