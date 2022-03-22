import 'dart:convert';

import 'package:dio/dio.dart';

import '../model/list_hotel_res.dart';
import '../widget/token.dart';

class HotelRepImpl {
  Future<List<ListHotelRes>> getListHotel(String url) async {
    List<ListHotelRes> result = [];
    try {
      Dio dio = new Dio();
      dio.options.headers['content-type'] = 'application/json';
      dio.options.headers["Authorization"] = "${GoogleTokenID.token}";
      Response response = await dio.get(url);  
      result = ListHotelRes.listHotelResFromJson(jsonEncode(response.data));
    } on DioError catch (e) {
      // showToastFail(e.response?.data["message"]);
    }
    return result;
  }
}