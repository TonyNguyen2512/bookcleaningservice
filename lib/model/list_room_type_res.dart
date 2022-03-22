// To parse this JSON data, do
//
//     final listRoomTypeRes = listRoomTypeResFromJson(jsonString);

import 'dart:convert';



class ListRoomTypeRes {

static  List<ListRoomTypeRes> listRoomTypeResFromJson(String str) => List<ListRoomTypeRes>.from(json.decode(str).map((x) => ListRoomTypeRes.fromJson(x)));

static String listRoomTypeResToJson(List<ListRoomTypeRes> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

    ListRoomTypeRes({
        this.roomTypeId,
        this.hotelId,
        this.systemRoomTypeId,
        this.name,
        this.hotel,
        this.systemRoomType,
        this.rooms,
    });

    int? roomTypeId;
    int? hotelId;
    int? systemRoomTypeId;
    String? name;
    dynamic hotel;
    dynamic systemRoomType;
    List<dynamic>? rooms;

    factory ListRoomTypeRes.fromJson(Map<String, dynamic> json) => ListRoomTypeRes(
        roomTypeId: json["roomTypeId"],
        hotelId: json["hotelId"],
        systemRoomTypeId: json["systemRoomTypeId"],
        name: json["name"],
        hotel: json["hotel"],
        systemRoomType: json["systemRoomType"],
        rooms: List<dynamic>.from(json["rooms"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "roomTypeId": roomTypeId,
        "hotelId": hotelId,
        "systemRoomTypeId": systemRoomTypeId,
        "name": name,
        "hotel": hotel,
        "systemRoomType": systemRoomType,
        "rooms": List<dynamic>.from(rooms!.map((x) => x)),
    };
}
