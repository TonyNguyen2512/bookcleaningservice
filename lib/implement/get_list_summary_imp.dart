import 'dart:convert';

import 'package:dio/dio.dart';

import '../model/list_summary_res.dart';

class SummaryRepImpl {
  Future<ListSummaryRes> getListService(String url) async {
    ListSummaryRes result = new ListSummaryRes();
    try {
      Response response = await Dio().get(url);
      result = ListSummaryRes.listSummaryResFromJson(jsonEncode(response.data));
    } on DioError catch (e) {
      // showToastFail(e.response?.data["message"]);
    }
    return result;
  }
}