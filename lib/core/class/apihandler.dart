// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:tech_app/core/class/satusrequst.dart';
import 'package:tech_app/core/functions/checkinternet.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class ApiHandler {
  Future<Either<StatusRequst, Map>> postData(String linkurl, Map data) async {
    if (await checkInternet()) {
      var response = await http.post(Uri.parse(linkurl), body: data);
      print(response.statusCode);

      if (response.statusCode == 200 || response.statusCode == 201) {
        Map responsebody = jsonDecode(response.body);
        print(responsebody);

        return Right(responsebody);
      } else {
        return const Left(StatusRequst.serverfailure);
      }
    } else {
      return const Left(StatusRequst.offlinefailure);
    }
  }
}
