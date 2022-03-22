// To parse this JSON data, do
//
//     final listSummaryRes = listSummaryResFromJson(jsonString);

import 'dart:convert';


class ListSummaryRes {
 static ListSummaryRes listSummaryResFromJson(String str) => ListSummaryRes.fromJson(json.decode(str));

static String listSummaryResToJson(ListSummaryRes data) => json.encode(data.toJson());

    ListSummaryRes({
        this.hotel,
        this.company,
        this.todayOrders,
        this.totalOrders,
    });

    int? hotel;
    int? company;
    int? todayOrders;
    int? totalOrders;

    factory ListSummaryRes.fromJson(Map<String, dynamic> json) => ListSummaryRes(
        hotel: json["hotel"],
        company: json["company"],
        todayOrders: json["todayOrders"],
        totalOrders: json["totalOrders"],
    );

    Map<String, dynamic> toJson() => {
        "hotel": hotel,
        "company": company,
        "todayOrders": todayOrders,
        "totalOrders": totalOrders,
    };
}
