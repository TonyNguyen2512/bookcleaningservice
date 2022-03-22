import 'dart:convert';

import 'package:dio/dio.dart';

import '../model/list_room_type_res.dart';
import '../widget/token.dart';

class RoomTypeRepImpl {
  Future<List<ListRoomTypeRes>> getListRoomType(String url) async {
    List<ListRoomTypeRes> result = [];
    try {
      Dio dio = new Dio();
      dio.options.headers['content-type'] = 'application/json';
      dio.options.headers["Authorization"] = "${GoogleTokenID.token}";
      Response response = await dio.get(url);  
      result = ListRoomTypeRes.listRoomTypeResFromJson(jsonEncode(response.data));
    } on DioError catch (e) {
      // showToastFail(e.response?.data["message"]);
    }
    return result;
  }
}