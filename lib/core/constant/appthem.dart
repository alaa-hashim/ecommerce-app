import 'package:tech_app/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
    textTheme: const TextTheme(
        displayLarge: TextStyle(
            fontSize: 23, fontWeight: FontWeight.bold, color: AppColor.black),
        bodyLarge: TextStyle(
            color: AppColor.lightgray,
            fontWeight: FontWeight.bold,
            fontSize: 16,
            height: 2)),
    primarySwatch: Colors.blue,
    appBarTheme: const AppBarTheme(color: AppColor.primaryColor, elevation: 0));
ThemeData themeArabic = ThemeData(
  textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontSize: 23, fontWeight: FontWeight.bold, color: AppColor.black),
      bodyLarge: TextStyle(
          color: AppColor.lightgray,
          fontWeight: FontWeight.bold,
          fontSize: 16,
          height: 2)),
  primarySwatch: Colors.blue,
);
