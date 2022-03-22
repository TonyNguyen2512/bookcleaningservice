import 'dart:convert';

import 'package:dio/dio.dart';

import '../model/list_hotel_member_res.dart';

class HotelMemberRepImpl {
  Future<List<ListHotelMemberRes>> getListHotelMember(String url) async {
    List<ListHotelMemberRes> result = [];
    try {
      Response response = await Dio().get(url);
      result = ListHotelMemberRes.listHotelMemberResFromJson(jsonEncode(response.data));
    } on DioError catch (e) {
      // showToastFail(e.response?.data["message"]);
    }
    return result;
  }
}