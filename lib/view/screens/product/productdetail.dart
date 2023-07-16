// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors_in_immutables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:tech_app/core/constant/imageasset.dart';
import 'package:tech_app/linkapi.dart';

import '../../../controller/productdetialcontroller.dart';
import '../../../core/constant/color.dart';
import '../../widgets/productdetail/priceandcount.dart';
import '../../widgets/productdetail/bottomrow.dart';

class Productdetial extends StatelessWidget {
  Productdetial({super.key});

  @override
  Widget build(BuildContext context) {
    ProductDetailmpl contrller = Get.put(ProductDetailmpl());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Use the correct back icon
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  contrller.prodUct.proudctImg!.isNotEmpty
                      ? Hero(
                          tag: contrller.prodUct.productId!,
                          child: SizedBox(
                            height: 230,
                            width: double.infinity,
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                                  "${AppLink.imagestItems}/${contrller.prodUct.proudctImg!}",
                            ),
                          ),
                        )
                      : Lottie.asset(AppImageAsset.noImage),
                  Padding(
                    padding: const EdgeInsets.only(right: 190),
                    child: Text(
                      contrller.prodUct.productName!,
                      style: GoogleFonts.abel(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const PriceAndcount(),
                      Padding(
                        padding: const EdgeInsets.only(left: 170),
                        child: Text(
                          contrller.prodUct.price!.toString(),
                          style: GoogleFonts.abel(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ExpandableText(
                      '  ${contrller.prodUct.detail!} ',
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      expandText: 'show more',
                      collapseText: 'show less',
                      maxLines: 2,
                      linkColor: AppColor.primaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: AppColor.bg),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, right: 200, left: 8),
                          child: Text(
                            "recommended for you ",
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: AppColor.bg),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            right: 240,
                          ),
                          child: Text(
                            "user reviews ",
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Row(
                          children: const [],
                        )
                      ]),
                    ),
                  ),
                ],
              )
            ]),
          ),
          const BottomRow(),
        ],
      ),
    );
  }
}
