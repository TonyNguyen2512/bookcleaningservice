// To parse this JSON data, do
//
//     final listEmployee = listEmployeeFromJson(jsonString);

import 'dart:convert';


class ListEmployee {
static  List<ListEmployee> listEmployeeFromJson(String str) => List<ListEmployee>.from(json.decode(str).map((x) => ListEmployee.fromJson(x)));

static String listEmployeeToJson(List<ListEmployee> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

    ListEmployee({
        this.employeeId,
        this.companyId,
        this.name,
        this.address,
        this.phone,
        this.status,
        this.company,
        this.orderDetails,
    });

    int? employeeId;
    int? companyId;
    String? name;
    String? address;
    String? phone;
    int?status;
    dynamic? company;
    List<dynamic>? orderDetails;

    factory ListEmployee.fromJson(Map<String, dynamic> json) => ListEmployee(
        employeeId: json["employeeId"],
        companyId: json["companyId"],
        name: json["name"],
        address: json["address"],
        phone: json["phone"],
        status: json["status"],
        company: json["company"],
        orderDetails: List<dynamic>.from(json["orderDetails"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "employeeId": employeeId,
        "companyId": companyId,
        "name": name,
        "address": address,
        "phone": phone,
        "status": status,
        "company": company,
        "orderDetails": List<dynamic>.from(orderDetails!.map((x) => x)),
    };
}
