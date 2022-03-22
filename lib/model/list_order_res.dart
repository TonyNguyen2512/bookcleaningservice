// To parse this JSON data, do
//
//     final listOrderRes = listOrderResFromJson(jsonString);

import 'dart:convert';

class ListOrderRes {
static  List<ListOrderRes> listOrderResFromJson(String str) => List<ListOrderRes>.from(json.decode(str).map((x) => ListOrderRes.fromJson(x)));

static String listOrderResToJson(List<ListOrderRes> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
    ListOrderRes({
        this.orderId,
        this.hotelId,
        this.name,
        this.startDate,
        this.endDate,
        this.status,
        this.companyId,
        this.company,
        this.hotel,
        this.roomOrders,
    });

    int? orderId;
    int? hotelId;
    String? name;
    String? startDate;
    String? endDate;
    int? status;
    int? companyId;
    dynamic company;
    dynamic hotel;
    List<dynamic>? roomOrders;

    factory ListOrderRes.fromJson(Map<String, dynamic> json) => ListOrderRes(
        orderId: json["orderId"],
        hotelId: json["hotelId"],
        name: json["name"],
        startDate: json["startDate"],
        endDate: json["endDate"],
        status: json["status"],
        companyId: json["companyId"],
        company: json["company"],
        hotel: json["hotel"],
        roomOrders: List<dynamic>.from(json["roomOrders"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "orderId": orderId,
        "hotelId": hotelId,
        "name": name,
        "startDate": startDate,
        "endDate": endDate,
        "status": status,
        "companyId": companyId,
        "company": company,
        "hotel": hotel,
        "roomOrders": List<dynamic>.from(roomOrders!.map((x) => x)),
    };
}
