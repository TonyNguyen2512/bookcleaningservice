import 'dart:convert';

import 'package:dio/dio.dart';

import '../model/list_room_type_res.dart';

class RoomTypeRepImpl {
  Future<List<ListRoomTypeRes>> getListRoomType(String url) async {
    List<ListRoomTypeRes> result = [];
    try {
      Response response = await Dio().get(url);
      result = ListRoomTypeRes.listRoomTypeResFromJson(jsonEncode(response.data));
    } on DioError catch (e) {
      // showToastFail(e.response?.data["message"]);
    }
    return result;
  }
}