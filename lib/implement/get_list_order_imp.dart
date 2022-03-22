import 'dart:convert';

import 'package:dio/dio.dart';

import '../model/list_order_res.dart';

class OrderRepImpl {
  Future<List<ListOrderRes>> getListOrder(String url) async {
    List<ListOrderRes> result = [];
    try {
      Response response = await Dio().get(url);
      result = ListOrderRes.listOrderResFromJson(jsonEncode(response.data));
    } on DioError catch (e) {
      // showToastFail(e.response?.data["message"]);
    }
    return result;
  }
}