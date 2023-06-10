import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/subcategorycontroller.dart';
import '../widgets/catcard.dart';

class Subcategory extends StatelessWidget {
  const Subcategory({super.key});

  @override
  Widget build(BuildContext context) {
    SubcatControllerImp controller = Get.put(SubcatControllerImp());
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: const [MyWidget()],
      ),
    );
  }
}
