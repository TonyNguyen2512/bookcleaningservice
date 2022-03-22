import 'dart:convert';

import 'package:dio/dio.dart';

import '../model/list_role_res.dart';
import '../model/list_room_res.dart';
import '../widget/token.dart';

class RoomRepImpl {
  Future<List<ListRoomRes>> getListRoom(String url) async {
    List<ListRoomRes> result = [];
    try {
      Dio dio = new Dio();
      dio.options.headers['content-type'] = 'application/json';
      dio.options.headers["Authorization"] = "${GoogleTokenID.token}";
      Response response = await dio.get(url);  
      result = ListRoomRes.listRoomResFromJson(jsonEncode(response.data));
    } on DioError catch (e) {
      // showToastFail(e.response?.data["message"]);
    }
    return result;
  }
}