// ignore_for_file: unused_local_variable

import 'package:tech_app/controller/auth/Sign_up_controller.dart';
import 'package:tech_app/core/constant/color.dart';
import 'package:tech_app/core/functions/appexit.dart';
import 'package:tech_app/core/functions/validater.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/auth/custexfrom.dart';
import '../../widgets/auth/signup&login.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerimp controller = Get.put(SignUpControllerimp());
    return Scaffold(
      backgroundColor: AppColor.bg,
      body: WillPopScope(
        onWillPop: appExit,
        child: GetBuilder<SignUpControllerimp>(builder: (controller) {
          return Container(
              padding: const EdgeInsets.all(15),
              child: Form(
                key: controller.formstate,
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Create your Account",
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Custextfrom(
                        hinttext: 'Firstname',
                        iconData: Icons.person,
                        mycontroller: controller.username,
                        validator: (val) {
                          return inputvalidater(val!, 3, 100, "username");
                        },
                        isnumber: false,
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
                      child: Custextfrom(
                        hinttext: 'Enter your phone',
                        iconData: Icons.call,
                        mycontroller: controller.phone,
                        validator: (val) {
                          return inputvalidater(val!, 5, 15, "phone");
                        },
                        isnumber: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Custextfrom(
                        hinttext: 'Password',
                        iconData: Icons.lock_clock_outlined,
                        mycontroller: controller.password,
                        validator: (val) {
                          return inputvalidater(val!, 6, 100, "password");
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
                            Future.delayed(Duration.zero, () {
                              controller.signup();
                            });
                          },
                          textColor: AppColor.white,
                          child: const Text("Register"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SignupButton(
                        onTap: () {
                          controller.goToLogin();
                        },
                        textone: 'Already have account     ',
                        texttwo: 'Login',
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      color: AppColor.lightgray,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Coutnue with Accounts ",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: AppColor.lightred,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            width: 150,
                            height: 55,
                            child: MaterialButton(
                              onPressed: () {},
                              textColor: AppColor.red,
                              child: const Text("GOOGLE"),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                color: AppColor.lightblue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            width: 150,
                            height: 55,
                            child: MaterialButton(
                              onPressed: () {},
                              textColor: AppColor.blue,
                              child: const Text("FACEBOOK"),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ));
        }),
      ),
    );
  }
}
