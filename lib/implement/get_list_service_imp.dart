import 'dart:convert';

import 'package:bookcleaningservice/model/list_service_res.dart';
import 'package:dio/dio.dart';

class ServiceRepImpl {
  Future<List<ListService>> getListService(String url) async {
    List<ListService> result = [];
    try {
      Response response = await Dio().get(url);
      result = ListService.listServiceFromJson(jsonEncode(response.data));
    } on DioError catch (e) {
      // showToastFail(e.response?.data["message"]);
    }
    return result;
  }
}