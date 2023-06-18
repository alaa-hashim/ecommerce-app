import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_app/model/product.dart';

import '../../controller/productcontroller.dart';

class Itemcard extends GetView<ProductControllerImp> {
  final Product product;
  const Itemcard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => controller.goToPageProductDetails(product),
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
                        child: Container(
                          height: 125,
                          width: 115,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: NetworkImage("${product.image} "),
                            fit: BoxFit.cover,
                          )),
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
                        IconButton(
                          icon: const Icon(Icons.favorite),
                          color: const Color(0xffE4126B),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ]),
            ),
          )),
    );
  }
}
