import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:qrauthsuer/utilities/constants/url_constants.dart';

class ApiUtility {
  Dio _dio = Dio();

  dioGet(String token) async {
    try {
      var response = await _dio.get(UrlConstants.getUserDetails + token);
      log(response.data.toString());
      if (response.statusCode == 200) {
        return response.data;
      } else {
        log(response.data);
        return "ERROR";
      }
    } on Exception catch (e) {
      log("EXCEPTION:: $e");
      return "EXCEPTION";
    }
  }

  Future<void> dioPost() async {}
}
