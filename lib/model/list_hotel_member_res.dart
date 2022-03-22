// To parse this JSON data, do
//
//     final listHotelMemberRes = listHotelMemberResFromJson(jsonString);

import 'dart:convert';


class ListHotelMemberRes {
  
static  List<ListHotelMemberRes> listHotelMemberResFromJson(String str) => List<ListHotelMemberRes>.from(json.decode(str).map((x) => ListHotelMemberRes.fromJson(x)));

static String listHotelMemberResToJson(List<ListHotelMemberRes> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

    ListHotelMemberRes({
        this.memberId,
        this.hotelId,
        this.address,
        this.phone,
        this.email,
        this.hotel,
    });

    int? memberId;
    int? hotelId;
    String? address;
    String? phone;
    String? email;
    dynamic hotel;

    factory ListHotelMemberRes.fromJson(Map<String, dynamic> json) => ListHotelMemberRes(
        memberId: json["memberId"],
        hotelId: json["hotelId"],
        address: json["address"],
        phone: json["phone"],
        email: json["email"],
        hotel: json["hotel"],
    );

    Map<String, dynamic> toJson() => {
        "memberId": memberId,
        "hotelId": hotelId,
        "address": address,
        "phone": phone,
        "email": email,
        "hotel": hotel,
    };
}
