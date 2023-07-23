// ignore_for_file: avoid_unnecessary_containers, must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_app/controller/wishlistcontroller.dart';
import 'package:tech_app/model/product.dart';

import '../../controller/productcontroller.dart';
import '../../core/constant/color.dart';
import '../../linkapi.dart';

class Itemcard extends GetView<ProductControllerImp> {
  final Product product;
  int? i;
  Itemcard({Key? key, required this.i, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Hero(
        tag: product.productId!,
        child: Container(
          child: InkWell(
              onTap: () {
                controller.goToPageProductDetails(product);
                controller.recommend(controller.data, i!, product.productId!);
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Center(
                            child: SizedBox(
                              height: 125,
                              width: 115,
                              child: CachedNetworkImage(
                                imageUrl:
                                    "${AppLink.imagestItems}/${product.proudctImg}",
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            " ${product.productName}  ",
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff57636F),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            '\$${product.price.toString()}',
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff57636F),
                            ),
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  // ignore: prefer_const_constructors
                                  icon: Icon(
                                    Icons.add,
                                    color: const Color(0xff7BCFE9),
                                  ),
                                  onPressed: () {}),
                              GetBuilder<WishlistController>(
                                  builder: (controller) => IconButton(
                                      onPressed: () {
                                        if (controller
                                                .isWished[product.productId] ==
                                            "1") {
                                          controller
                                              .deletewish(product.productId!);
                                          controller.setWished(
                                              product.productId, "0");
                                        } else {
                                          controller
                                              .addwish(product.productId!);
                                          controller.setWished(
                                              product.productId, "1");
                                        }
                                      },
                                      icon: Icon(
                                        controller.isWished[
                                                    product.productId] ==
                                                "1"
                                            ? Icons.favorite
                                            : Icons.favorite_border_outlined,
                                        color: AppColor.red,
                                      )))
                            ])
                      ],
                    ),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
