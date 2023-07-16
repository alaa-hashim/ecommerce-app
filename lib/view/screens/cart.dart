// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/cartcontroller.dart';
import '../widgets/cartitem.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Cartcontroller controller = Get.put(Cartcontroller());
    return Scaffold(
      appBar: AppBar(
        leading: const Text("Cart(1 Item)"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: controller.data.length,
            itemBuilder: (context, i) {
              return CartItem();
            }),
      ),
    );
  }
}
