// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_app/core/class/handlindatview.dart';

import '../../controller/homecontroller.dart';
import '../../core/constant/color.dart';
import '../widgets/home/category.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeControllermpl controller = Get.put(HomeControllermpl());

    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.primaryColor,
          actions: [
            Row(
              children: [
                IconButton(
                  // ignore: prefer_const_constructors
                  icon: Icon(
                    Icons.shopping_cart,
                    color: const Color(0xff7BCFE9),
                  ),

                  onPressed: () {},
                ),
              ],
            )
          ],
          elevation: 0,
        ),
        body: GetBuilder<HomeControllermpl>(
          builder: (controller) => HandlingDataView(
            statusRequest: controller.statusrequst,
            widget:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Expanded(
                  child: ListView(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                ),
                                height: 50,
                                width: width * 0.9,
                                child: const Center(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      label: Text('Search'),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                      ),
                                      suffixIcon: Icon(Icons.search),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            height: 260,
                            child: const CategoryHome(),
                          ),
                          // ignore: prefer_const_literals_to_create_immutables
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 210, top: 10, bottom: 10),
                          child: Text(
                            "2".tr,
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff57636F),
                              fontSize: 23,
                            ),
                          ),
                        ),
                        //const Itemhome(),
                      ],
                    ),
                  ]))
            ]),
          ),
        ));
  }
}
