import 'dart:convert';

import 'package:bookcleaningservice/model/list_company_res.dart';
import 'package:dio/dio.dart';

class CompanyRepImpl {
  Future<List<ListCompaniesRes>> getListCompany(String url) async {
    List<ListCompaniesRes> result = [];
    try {
      Response response = await Dio().get(url);
      result = ListCompaniesRes.listCompaniesResFromJson(jsonEncode(response.data));
    } on DioError catch (e) {
      // showToastFail(e.response?.data["message"]);
    }
    return result;
  }
}