import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:tech_app/core/constant/color.dart';

import '../../../controller/auth/forgetpassword/verfiycode_controller.dart';
import '../../../core/class/satusrequst.dart';

class Verfiycode extends StatelessWidget {
  const Verfiycode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyControllerimp());
    return Scaffold(
      backgroundColor: AppColor.bg,
      body: GetBuilder<VerifyControllerimp>(
        builder: (controller) => controller.statusrequst == StatusRequst.loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(children: [
                  const SizedBox(
                    height: 140,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 290,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.white),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Verify Email",
                                style: Theme.of(context).textTheme.displayLarge,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "we have send verify code to your phone",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: OtpTextField(
                                numberOfFields: 5,
                                borderColor: AppColor.primaryColor,
                                //set to true to show as box or false to show as dash
                                showFieldAsBox: true,
                                //runs when a code is typed in
                                onCodeChanged: (String code) {
                                  //handle validation or checks here
                                },
                                //runs when every textfield is filled
                                onSubmit: (String verificationCode) {
                                  controller.goToreset(verificationCode);
                                }, // end onSubmit
                              ),
                            ),
                          ]),
                    ),
                  ),
                ]),
              ),
      ),
    );
  }
}
