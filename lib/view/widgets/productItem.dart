// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/product.dart';

class Productitem extends StatelessWidget {
  final Product product;
  // ignore: use_key_in_widget_constructors
  const Productitem(this.product);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    height: 135,
                    width: 115,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(""),
                      fit: BoxFit.cover,
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "",
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
                        onPressed: () {
                          //controller.addItem(product);
                        }),
                    IconButton(
                      icon: const Icon(Icons.favorite),
                      color: const Color(0xffE4126B),
                      onPressed: () {},
                    ),
                  ],
                ),
              ]),
        ));
  }
}
