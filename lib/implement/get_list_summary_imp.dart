import 'dart:convert';

import 'package:dio/dio.dart';

import '../model/list_summary_res.dart';
import '../widget/token.dart';

class SummaryRepImpl {
  Future<ListSummaryRes> getListService(String url) async {
    ListSummaryRes result = new ListSummaryRes();
    try {
      Dio dio = new Dio();
      dio.options.headers['content-type'] = 'application/json';
      dio.options.headers["Authorization"] = "${GoogleTokenID.token}";
      Response response = await dio.get(url);  
      result = ListSummaryRes.listSummaryResFromJson(jsonEncode(response.data));
    } on DioError catch (e) {
      // showToastFail(e.response?.data["message"]);
    }
    return result;
  }
}