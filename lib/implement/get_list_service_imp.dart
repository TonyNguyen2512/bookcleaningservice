import 'dart:convert';

import 'package:bookcleaningservice/model/list_service_res.dart';
import 'package:dio/dio.dart';

import '../widget/token.dart';

class ServiceRepImpl {
  Future<List<ListService>> getListService(String url) async {
    List<ListService> result = [];
    try {
      Dio dio = new Dio();
      dio.options.headers['content-type'] = 'application/json';
      dio.options.headers["Authorization"] = "${GoogleTokenID.token}";
      Response response = await dio.get(url);  
      result = ListService.listServiceFromJson(jsonEncode(response.data));
    } on DioError catch (e) {
      // showToastFail(e.response?.data["message"]);
    }
    return result;
  }
}