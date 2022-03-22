import 'dart:convert';

import 'package:bookcleaningservice/model/list_company_res.dart';
import 'package:dio/dio.dart';

import '../model/list_token_res.dart';
import '../widget/token.dart';

class TokenRepImp {
  Future<ListTokenRes> getToken(String url) async {
    ListTokenRes result = new ListTokenRes();
    try {
      Dio dio = new Dio();
      dio.options.headers['content-type'] = 'application/json';
      dio.options.headers["Authorization"] = "${GoogleTokenID.token}";
      Response response = await dio.get(url);  
      result = ListTokenRes.listTokenResFromJson(jsonEncode(response.data));
    } on DioError catch (e) {
      // showToastFail(e.response?.data["message"]);
    }
    return result;
  }
}