import 'dart:convert';

import 'package:dio/dio.dart';

import '../model/list_system_room_type_res.dart';
import '../widget/token.dart';


class SystemRoomTypeRepImpl {
  Future<List<ListSystemRoomTypeRes>> getListSystemRoomType(String url) async {
    List<ListSystemRoomTypeRes> result = [];
    try {
      Dio dio = new Dio();
      dio.options.headers['content-type'] = 'application/json';
      dio.options.headers["Authorization"] = "${GoogleTokenID.token}";
      Response response = await dio.get(url);  
      result = ListSystemRoomTypeRes.listSystemRoomTypeResFromJson(jsonEncode(response.data));
    } on DioError catch (e) {
      // showToastFail(e.response?.data["message"]);
    }
    return result;
  }
}