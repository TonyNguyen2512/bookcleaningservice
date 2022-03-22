import 'dart:convert';

import 'package:dio/dio.dart';

import '../model/list_hotel_res.dart';

class HotelRepImpl {
  Future<List<ListHotelRes>> getListHotel(String url) async {
    List<ListHotelRes> result = [];
    try {
      Response response = await Dio().get(url);
      result = ListHotelRes.listHotelResFromJson(jsonEncode(response.data));
    } on DioError catch (e) {
      // showToastFail(e.response?.data["message"]);
    }
    return result;
  }
}