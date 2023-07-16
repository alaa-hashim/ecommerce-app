//
//
//// ignore_for_file: must_be_immutable
//* //
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controller/cartcontroller.dart';

// ignore: must_be_immutable
class CartItem extends StatelessWidget {
  // final CartController controller;
  late int i;

  CartItem({
    key,
    //  required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Cartcontroller controller = Get.put(Cartcontroller());
    return Dismissible(
      key: ValueKey(controller.data[i].productId),
      background: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.error,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        margin: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4,
        ),
        child: const Icon(
          Icons.delete,
          color: Colors.white,
          size: 40,
        ),
      ),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        // controller.removeitem(product);
      },
      child: Card(
        margin: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 135,
                width: 64,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xff4D77FF),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.add),
                          color: Colors.white,
                          onPressed: () {
                            // controller.addItem(product);
                          },
                        ),
                        const Text(
                          ' x',
                          style: TextStyle(color: Colors.white),
                        ),
                        IconButton(
                          icon: const Icon(Icons.remove),
                          color: Colors.white,
                          onPressed: () {
                            //controller.removeitem(product);
                          },
                        ),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: FittedBox(
                child: Container(
                  height: 140,
                  width: 115,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0)),
                      image: DecorationImage(
                        image: NetworkImage(""),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  "From",
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff57636F),
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Total: \$${(controller.data[i].price)}',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff57636F),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}  //