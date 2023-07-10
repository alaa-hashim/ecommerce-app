import 'package:tech_app/core/class/satusrequst.dart';
import 'package:tech_app/core/constant/color.dart';
import 'package:tech_app/core/functions/validater.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/forgetpassword/forgetpassword_controller.dart';
import '../../widgets/auth/custexfrom.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordimp());
    return Scaffold(
        backgroundColor: AppColor.bg,
        body: GetBuilder<ForgetPasswordimp>(
          builder: (controller) => controller.statusrequst ==
                  StatusRequst.loading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Form(
                  key: controller.formstate,
                  child: Container(
                      padding: const EdgeInsets.all(15),
                      child: ListView(
                        children: [
                          const SizedBox(
                            height: 120,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Froget password",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Custextfrom(
                              hinttext: 'Email',
                              iconData: Icons.email,
                              mycontroller: controller.email,
                              validator: (val) {
                                return inputvalidater(val!, 5, 100, "email");
                              },
                              isnumber: false,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: AppColor.primaryColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              width: 230,
                              height: 55,
                              child: MaterialButton(
                                onPressed: () {
                                  controller.checkemail();
                                },
                                textColor: AppColor.white,
                                child: const Text("Next"),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
        ));
  }
}
