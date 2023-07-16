// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_app/core/constant/color.dart';

import '../../../controller/productdetialcontroller.dart';

class PriceAndcount extends StatelessWidget {
  const PriceAndcount({super.key});

  @override
  Widget build(BuildContext context) {
    ProductDetailmpl controller = Get.put(ProductDetailmpl());
    return GetBuilder<ProductDetailmpl>(
      builder: (controller) => Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const FaIcon(
                FontAwesomeIcons.plus,
                color: AppColor.red,
              ),
              onPressed: () {
                controller.add();
              },
            ),
          ),
          Center(
              child: Text(
            '${controller.itemcount}',
            style: GoogleFonts.abel(fontSize: 18, fontWeight: FontWeight.bold),
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const FaIcon(
                FontAwesomeIcons.minus,
                color: AppColor.primaryColor,
              ),
              onPressed: () {
                controller.remove();
              },
            ),
          ),
        ],
      ),
    );
  }
}
