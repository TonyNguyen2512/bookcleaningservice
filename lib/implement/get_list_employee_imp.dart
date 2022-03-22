import 'dart:convert';

import 'package:dio/dio.dart';

import '../model/list_employee_res.dart';
import '../widget/token.dart';

class EmployeeRepImpl {
  Future<List<ListEmployee>> getListCompany(String url) async {
    List<ListEmployee> result = [];
    try {
      Dio dio = new Dio();
      dio.options.headers['content-type'] = 'application/json';
      dio.options.headers["Authorization"] = "${GoogleTokenID.token}";
      Response response = await dio.get(url);  
      result = ListEmployee.listEmployeeFromJson(jsonEncode(response.data));
    } on DioError catch (e) {
      // showToastFail(e.response?.data["message"]);
    }
    return result;
  }
}