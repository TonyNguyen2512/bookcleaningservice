import 'dart:convert';

import 'package:dio/dio.dart';

import '../model/list_role_res.dart';
import '../model/list_room_res.dart';

class RoomRepImpl {
  Future<List<ListRoomRes>> getListRoom(String url) async {
    List<ListRoomRes> result = [];
    try {
      Response response = await Dio().get(url);
      result = ListRoomRes.listRoomResFromJson(jsonEncode(response.data));
    } on DioError catch (e) {
      // showToastFail(e.response?.data["message"]);
    }
    return result;
  }
}