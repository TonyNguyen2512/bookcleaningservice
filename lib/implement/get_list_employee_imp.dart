import 'dart:convert';

import 'package:dio/dio.dart';

import '../model/list_employee_res.dart';

class EmployeeRepImpl {
  Future<List<ListEmployee>> getListCompany(String url) async {
    List<ListEmployee> result = [];
    try {
      Response response = await Dio().get(url);
      result = ListEmployee.listEmployeeFromJson(jsonEncode(response.data));
    } on DioError catch (e) {
      // showToastFail(e.response?.data["message"]);
    }
    return result;
  }
}