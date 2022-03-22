// To parse this JSON data, do
//
//     final listHotelRes = listHotelResFromJson(jsonString);

import 'dart:convert';


class ListHotelRes {
static  List<ListHotelRes> listHotelResFromJson(String str) => List<ListHotelRes>.from(json.decode(str).map((x) => ListHotelRes.fromJson(x)));

static String listHotelResToJson(List<ListHotelRes> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

    ListHotelRes({
        this.hotelId,
        this.name,
        this.address,
        this.phone,
        this.email,
        this.orders,
        this.roomTypes,
        this.rooms,
    });

    int? hotelId;
    String? name;
    String? address;
    String? phone;
    String? email;
    List<dynamic>? orders;
    List<RoomType>? roomTypes;
    List<dynamic>? rooms;

    factory ListHotelRes.fromJson(Map<String, dynamic> json) => ListHotelRes(
        hotelId: json["hotelId"],
        name: json["name"],
        address: json["address"],
        phone: json["phone"],
        email: json["email"],
        orders: List<dynamic>.from(json["orders"].map((x) => x)),
        roomTypes: List<RoomType>.from(json["roomTypes"].map((x) => RoomType.fromJson(x))),
        rooms: List<dynamic>.from(json["rooms"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "hotelId": hotelId,
        "name": name,
        "address": address,
        "phone": phone,
        "email": email,
        "orders": List<dynamic>.from(orders!.map((x) => x)),
        "roomTypes": List<dynamic>.from(roomTypes!.map((x) => x.toJson())),
        "rooms": List<dynamic>.from(rooms!.map((x) => x)),
    };
}

class RoomType {
    RoomType({
        this.roomTypeId,
        this.hotelId,
        this.systemRoomTypeId,
        this.name,
        this.systemRoomType,
        this.rooms,
    });

    int? roomTypeId;
    int? hotelId;
    int? systemRoomTypeId;
    String? name;
    SystemRoomType? systemRoomType;
    List<dynamic>? rooms;

    factory RoomType.fromJson(Map<String, dynamic> json) => RoomType(
        roomTypeId: json["roomTypeId"],
        hotelId: json["hotelId"],
        systemRoomTypeId: json["systemRoomTypeId"],
        name: json["name"],
        systemRoomType: SystemRoomType.fromJson(json["systemRoomType"]),
        rooms: List<dynamic>.from(json["rooms"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "roomTypeId": roomTypeId,
        "hotelId": hotelId,
        "systemRoomTypeId": systemRoomTypeId,
        "name": name,
        "systemRoomType": systemRoomType!.toJson(),
        "rooms": List<dynamic>.from(rooms!.map((x) => x)),
    };
}

class SystemRoomType {
    SystemRoomType({
        this.systemRoomTypeId,
        this.name,
        this.roomTypes,
    });

    int? systemRoomTypeId;
    String? name;
    List<dynamic>? roomTypes;

    factory SystemRoomType.fromJson(Map<String, dynamic> json) => SystemRoomType(
        systemRoomTypeId: json["systemRoomTypeId"],
        name: json["name"],
        roomTypes: List<dynamic>.from(json["roomTypes"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "systemRoomTypeId": systemRoomTypeId,
        "name": name,
        "roomTypes": List<dynamic>.from(roomTypes!.map((x) => x)),
    };
}
