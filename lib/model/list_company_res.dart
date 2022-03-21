// To parse this JSON data, do
//
//     final listCompaniesRes = listCompaniesResFromJson(jsonString);

import 'dart:convert';


class ListCompaniesRes {
  static List<ListCompaniesRes> listCompaniesResFromJson(String str) => List<ListCompaniesRes>.from(json.decode(str).map((x) 
  => ListCompaniesRes.fromJson(x)));

 static String listCompaniesResToJson(List<ListCompaniesRes> data) => json.encode(List<dynamic>.from(data.map((x) 
 => x.toJson())));

    ListCompaniesRes({
        this.companyId,
        this.name,
        this.address,
        this.phone,
        this.email,
        this.employees,
        this.orders,
        this.services,
    });

    int? companyId;
    String? name;
    String? address;
    String? phone;
    String? email;
    List<Employee>? employees;
    List<dynamic>? orders;
    List<Service>? services;

    factory ListCompaniesRes.fromJson(Map<String, dynamic> json) => ListCompaniesRes(
        companyId: json["companyId"],
        name: json["name"],
        address: json["address"],
        phone: json["phone"],
        email: json["email"],
        employees: List<Employee>.from(json["employees"].map((x) => Employee.fromJson(x))),
        orders: List<dynamic>.from(json["orders"].map((x) => x)),
        services: List<Service>.from(json["services"].map((x) => Service.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "companyId": companyId,
        "name": name,
        "address": address,
        "phone": phone,
        "email": email,
        "employees": List<dynamic>.from(employees!.map((x) => x.toJson())),
        "orders": List<dynamic>.from(orders!.map((x) => x)),
        "services": List<dynamic>.from(services!.map((x) => x.toJson())),
    };
}

class Employee {
    Employee({
        this.employeeId,
        this.companyId,
        this.name,
        this.address,
        this.phone,
        this.status,
        this.orderDetails,
    });

    int? employeeId;
    int? companyId;
    String? name;
    String? address;
    String? phone;
    int? status;
    List<dynamic>? orderDetails;

    factory Employee.fromJson(Map<String, dynamic> json) => Employee(
        employeeId: json["employeeId"],
        companyId: json["companyId"],
        name: json["name"],
        address: json["address"],
        phone: json["phone"],
        status: json["status"],
        orderDetails: List<dynamic>.from(json["orderDetails"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "employeeId": employeeId,
        "companyId": companyId,
        "name": name,
        "address": address,
        "phone": phone,
        "status": status,
        "orderDetails": List<dynamic>.from(orderDetails!.map((x) => x)),
    };
}

class Service {
    Service({
        this.serviceId,
        this.companyId,
        this.name,
        this.price,
        this.orderDetails,
    });

    int? serviceId;
    int? companyId;
    String? name;
    dynamic price;
    List<dynamic>? orderDetails;

    factory Service.fromJson(Map<String, dynamic> json) => Service(
        serviceId: json["serviceId"],
        companyId: json["companyId"],
        name: json["name"],
        price: json["price"],
        orderDetails: List<dynamic>.from(json["orderDetails"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "serviceId": serviceId,
        "companyId": companyId,
        "name": name,
        "price": price,
        "orderDetails": List<dynamic>.from(orderDetails!.map((x) => x)),
    };
}
