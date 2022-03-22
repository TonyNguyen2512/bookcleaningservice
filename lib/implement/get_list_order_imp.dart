import 'dart:convert';

import 'package:dio/dio.dart';

import '../model/list_order_res.dart';
import '../widget/token.dart';

class OrderRepImpl {
  Future<List<ListOrderRes>> getListOrder(String url) async {
    List<ListOrderRes> result = [];
    try {
      Dio dio = new Dio();
      dio.options.headers['content-type'] = 'application/json';
      dio.options.headers["Authorization"] = "${GoogleTokenID.token}";
      Response response = await dio.get(url);  
      result = ListOrderRes.listOrderResFromJson(jsonEncode(response.data));
    } on DioError catch (e) {
      // showToastFail(e.response?.data["message"]);
    }
    return result;
  }
}