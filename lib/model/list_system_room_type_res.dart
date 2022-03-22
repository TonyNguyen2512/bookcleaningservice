// To parse this JSON data, do
//
//     final listSystemRoomTypeRes = listSystemRoomTypeResFromJson(jsonString);

import 'dart:convert';

class ListSystemRoomTypeRes {
static List<ListSystemRoomTypeRes> listSystemRoomTypeResFromJson(String str) => List<ListSystemRoomTypeRes>.from(json.decode(str).map((x) => ListSystemRoomTypeRes.fromJson(x)));

static String listSystemRoomTypeResToJson(List<ListSystemRoomTypeRes> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

    ListSystemRoomTypeRes({
        this.systemRoomTypeId,
        this.name,
        this.roomTypes,
    });

    int? systemRoomTypeId;
    String? name;
    List<dynamic>? roomTypes;

    factory ListSystemRoomTypeRes.fromJson(Map<String, dynamic> json) => ListSystemRoomTypeRes(
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
