import 'dart:convert';

import 'package:dio/dio.dart';

import '../model/list_hotel_member_res.dart';
import '../widget/token.dart';

class HotelMemberRepImpl {
  Future<List<ListHotelMemberRes>> getListHotelMember(String url) async {
    List<ListHotelMemberRes> result = [];
    try {
      Dio dio = new Dio();
      dio.options.headers['content-type'] = 'application/json';
      dio.options.headers["Authorization"] = "${GoogleTokenID.token}";
      Response response = await dio.get(url);  
      result = ListHotelMemberRes.listHotelMemberResFromJson(jsonEncode(response.data));
    } on DioError catch (e) {
      // showToastFail(e.response?.data["message"]);
    }
    return result;
  }
}