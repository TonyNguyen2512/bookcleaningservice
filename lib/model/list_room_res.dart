// To parse this JSON data, do
//
//     final listRoomRes = listRoomResFromJson(jsonString);

import 'dart:convert';



class ListRoomRes {
static  List<ListRoomRes> listRoomResFromJson(String str) => List<ListRoomRes>.from(json.decode(str).map((x) => ListRoomRes.fromJson(x)));

static String listRoomResToJson(List<ListRoomRes> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
    ListRoomRes({
        this.roomId,
        this.hotelId,
        this.roomTypeId,
        this.name,
        this.hotel,
        this.roomType,
        this.roomOrders,
    });

    int? roomId;
    int? hotelId;
    int? roomTypeId;
    String? name;
    dynamic hotel;
    dynamic roomType;
    List<dynamic>? roomOrders;

    factory ListRoomRes.fromJson(Map<String, dynamic> json) => ListRoomRes(
        roomId: json["roomId"],
        hotelId: json["hotelId"],
        roomTypeId: json["roomTypeId"],
        name: json["name"],
        hotel: json["hotel"],
        roomType: json["roomType"],
        roomOrders: List<dynamic>.from(json["roomOrders"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "roomId": roomId,
        "hotelId": hotelId,
        "roomTypeId": roomTypeId,
        "name": name,
        "hotel": hotel,
        "roomType": roomType,
        "roomOrders": List<dynamic>.from(roomOrders!.map((x) => x)),
    };
}
