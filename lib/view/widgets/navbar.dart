// ignore_for_file: unused_import, depend_on_referenced_packages, library_private_types_in_public_api

/*import 'package:tech_app/controller/botttombarcontroller.dart';
import 'package:tech_app/view/screen/cart.dart';
import 'package:tech_app/view/screen/categroy.dart';
import 'package:tech_app/view/screen/explore.dart';
import 'package:tech_app/view/screen/homepage.dart';
import 'package:tech_app/view/screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/botttombarcontroller.dart';
import '../../core/constant/color.dart';
import '../screens/cart.dart';
import '../screens/home.dart';

class Navr extends GetView<BottomNavigationBarContorller> {
  const Navr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigationBarContorller>(
      builder: (controller) {
        return Scaffold(
          // ignore: prefer_const_literals_to_create_immutables
          body: IndexedStack(index: controller.tabIndex, children: [
            const Home(),
            const CartScreen(),
            /* const Explore(),
            const Categroy(),
            const Cart(),
            const Profile(),*/
          ]),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            currentIndex: controller.tabIndex,
            selectedIconTheme:
                const IconThemeData(color: AppColor.primaryColor),
            selectedItemColor: AppColor.primaryColor,
            selectedFontSize: 15,
            unselectedItemColor: const Color(0xffA7B99E),
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            onTap: controller.changeTabindex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: 'Categories',
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  label: 'Cart',
                  backgroundColor: Colors.red),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded),
                label: 'My account',
              ),
            ],
          ),
        );
      },
    );
  }
}
