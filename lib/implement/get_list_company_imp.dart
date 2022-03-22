import 'dart:convert';

import 'package:bookcleaningservice/model/list_company_res.dart';
import 'package:dio/dio.dart';

import '../widget/token.dart';

class CompanyRepImpl {
  Future<List<ListCompaniesRes>> getListCompany(String url) async {
    List<ListCompaniesRes> result = [];
    try {
      Dio dio = new Dio();
      dio.options.headers['content-type'] = 'application/json';
      dio.options.headers["Authorization"] = "${GoogleTokenID.token}";
      Response response = await dio.get(url);  
      result = ListCompaniesRes.listCompaniesResFromJson(jsonEncode(response.data));
    } on DioError catch (e) {
      // showToastFail(e.response?.data["message"]);
    }
    return result;
  }
}