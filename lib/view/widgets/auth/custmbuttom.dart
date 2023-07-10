import 'package:tech_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustmButtom extends StatelessWidget {
  final String text;
  const CustmButtom({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: AppColor.primaryColor,
      textColor: AppColor.white,
      child: Text(text),
    );
  }
}
