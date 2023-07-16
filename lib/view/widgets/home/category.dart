import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_app/linkapi.dart';
import 'package:tech_app/model/catrgory.dart';

import '../../../controller/homecontroller.dart';
import '../../../core/constant/color.dart';

class CategoryHome extends GetView<HomeControllermpl> {
  const CategoryHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppColor.bg),
      height: 300,
      child: GridView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
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

class Categories extends GetView<HomeControllermpl> {
  final Category category;
  final int? i;
  const Categories({Key? key, required this.i, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goTosub(controller.category, i!, category.categoryId!);
      },
      child: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
                  width: 100,
                  child: CachedNetworkImage(
                    imageUrl:
                        "${AppLink.imagestCategories}/${category.categoryImage} ",
                  ),
                ),
                Center(
                  child: Text(
                    "${category.categoryName}",
                    style: const TextStyle(fontSize: 13, color: AppColor.black),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
