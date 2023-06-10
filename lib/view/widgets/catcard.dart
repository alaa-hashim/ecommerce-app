import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/subcategorycontroller.dart';
import '../../core/constant/color.dart';
import '../../model/catrgory.dart';

class MyWidget extends GetView<SubcatControllerImp> {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppColor.bg),
      height: 90,
      child: GridView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            crossAxisSpacing: 0.10,
            mainAxisSpacing: 0.10,
            childAspectRatio: 1.35,
          ),
          itemCount: controller.category.length,
          itemBuilder: (context, i) {
            return Categories(
              i: i,
              category: Category.fromJson(controller.category[i]),
            );
          }),
    );
  }
}

class Categories extends GetView<SubcatControllerImp> {
  final Category category;
  final int? i;
  const Categories({Key? key, required this.i, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.changeCat(i!);
      },
      child: Center(
        child: GetBuilder<SubcatControllerImp>(
          builder: (controller) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Center(
                  child: Container(
                    height: 45,
                    width: 70,
                    decoration: controller.selectedCat == i
                        ? const BoxDecoration(
                            color: AppColor.primaryColor,
                            border: Border(
                                bottom: BorderSide(
                                    color: AppColor.primaryColor, width: 3)))
                        : null,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "${category.categoryName}",
                          style: const TextStyle(
                              fontSize: 13, color: AppColor.black),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
