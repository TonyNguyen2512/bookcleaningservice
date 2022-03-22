import 'dart:convert';

import 'package:dio/dio.dart';

import '../model/list_system_room_type_res.dart';


class SystemRoomTypeRepImpl {
  Future<List<ListSystemRoomTypeRes>> getListSystemRoomType(String url) async {
    List<ListSystemRoomTypeRes> result = [];
    try {
      Response response = await Dio().get(url);
      result = ListSystemRoomTypeRes.listSystemRoomTypeResFromJson(jsonEncode(response.data));
    } on DioError catch (e) {
      // showToastFail(e.response?.data["message"]);
    }
    return result;
  }
}