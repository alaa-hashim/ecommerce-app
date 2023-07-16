import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';

class BottomRow extends StatelessWidget {
  const BottomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 50,
            width: 100,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              color: Color(0xffefeff2),
            ),
            child: IconButton(
              // ignore: prefer_const_constructors
              icon: Icon(
                Icons.shopping_cart,
                color: AppColor.primaryColor,
                size: 44,
              ),

              onPressed: () {},
            ),
          ),
          SizedBox(
              height: 50,
              child: MaterialButton(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
                  textColor: Colors.white,
                  onPressed: () {},
                  color: AppColor.primaryColor,
                  child: Text("3".tr)))
        ],
      ),
    );
  }
}
