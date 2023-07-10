// ignore_for_file: avoid_unnecessary_containers

import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:tech_app/core/constant/imageasset.dart';

import '../../../controller/productdetialcontroller.dart';
import '../../../core/constant/color.dart';

class Productdetial extends StatelessWidget {
  const Productdetial({super.key});

  @override
  Widget build(BuildContext context) {
    ProductDetailmpl contrller = Get.put(ProductDetailmpl());
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              contrller.prodUct.proudctImg!.isNotEmpty
                  ? Hero(
                      tag: contrller.prodUct.productId!,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 155,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      contrller.prodUct.proudctImg!))),
                        ),
                      ),
                    )
                  : Lottie.asset(AppImageAsset.noImage),
              Text(contrller.prodUct.productName!),
              Text(contrller.prodUct.price!.toString()),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
              )
            ],
          ),
        )
      ])),
    );
  }
}
