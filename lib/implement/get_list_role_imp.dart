import 'dart:convert';

import 'package:dio/dio.dart';

import '../model/list_role_res.dart';

class RoleRepImpl {
  Future<List<ListRoleRes>> getListRole(String url) async {
    List<ListRoleRes> result = [];
    try {
      Response response = await Dio().get(url);
      result = ListRoleRes.listRoleResFromJson(jsonEncode(response.data));
    } on DioError catch (e) {
      // showToastFail(e.response?.data["message"]);
    }
    return result;
  }
}