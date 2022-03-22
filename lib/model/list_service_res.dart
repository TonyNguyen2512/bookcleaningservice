// To parse this JSON data, do
//
//     final listService = listServiceFromJson(jsonString);

import 'dart:convert';



class ListService {
static  List<ListService> listServiceFromJson(String str) => List<ListService>.from(json.decode(str).map((x) => ListService.fromJson(x)));

static String listServiceToJson(List<ListService> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
    ListService({
        this.serviceId,
        this.companyId,
        this.name,
        this.price,
        this.company,
        this.orderDetails,
    });

    int? serviceId;
    int? companyId;
    String? name;
    dynamic price;
    Company? company;
    List<OrderDetail>? orderDetails;

    factory ListService.fromJson(Map<String, dynamic> json) => ListService(
        serviceId: json["serviceId"],
        companyId: json["companyId"],
        name: json["name"],
        price: json["price"],
        // company: Company.fromJson(json["company"]),
        orderDetails: List<OrderDetail>.from(json["orderDetails"].map((x) => OrderDetail.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "serviceId": serviceId,
        "companyId": companyId,
        "name": name,
        "price": price,
        "company": company!.toJson(),
        "orderDetails": List<dynamic>.from(orderDetails!.map((x) => x.toJson())),
    };
}

class Company {
    Company({
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
    List<Order>? orders;
    List<dynamic>? services;

    factory Company.fromJson(Map<String, dynamic> json) => Company(
        companyId: json["companyId"],
        name: json["name"],
        address: json["address"],
        phone: json["phone"],
        email: json["email"],
        employees: List<Employee>.from(json["employees"].map((x) => Employee.fromJson(x))),
        orders: List<Order>.from(json["orders"].map((x) => Order.fromJson(x))),
        services: List<dynamic>.from(json["services"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "companyId": companyId,
        "name": name,
        "address": address,
        "phone": phone,
        "email": email,
        "employees": List<dynamic>.from(employees!.map((x) => x.toJson())),
        "orders": List<dynamic>.from(orders!.map((x) => x.toJson())),
        "services": List<dynamic>.from(services!.map((x) => x)),
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

class Order {
    Order({
        this.orderId,
        this.hotelId,
        this.name,
        this.startDate,
        this.endDate,
        this.status,
        this.companyId,
        this.hotel,
        this.roomOrders,
    });

    int? orderId;
    int? hotelId;
    String? name;
    DateTime? startDate;
    DateTime? endDate;
    int? status;
    int? companyId;
    Hotel? hotel;
    List<RoomOrder>? roomOrders;

    factory Order.fromJson(Map<String, dynamic> json) => Order(
        orderId: json["orderId"],
        hotelId: json["hotelId"],
        name: json["name"],
        startDate: DateTime.parse(json["startDate"]),
        endDate: DateTime.parse(json["endDate"]),
        status: json["status"],
        companyId: json["companyId"],
        hotel: Hotel.fromJson(json["hotel"]),
        roomOrders: List<RoomOrder>.from(json["roomOrders"].map((x) => RoomOrder.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "orderId": orderId,
        "hotelId": hotelId,
        "name": name,
        "startDate": startDate!.toIso8601String(),
        "endDate": endDate!.toIso8601String(),
        "status": status,
        "companyId": companyId,
        "hotel": hotel!.toJson(),
        "roomOrders": List<dynamic>.from(roomOrders!.map((x) => x.toJson())),
    };
}

class Hotel {
    Hotel({
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
    List<Room>? rooms;

    factory Hotel.fromJson(Map<String, dynamic> json) => Hotel(
        hotelId: json["hotelId"],
        name: json["name"],
        address: json["address"],
        phone: json["phone"],
        email: json["email"],
        orders: List<dynamic>.from(json["orders"].map((x) => x)),
        roomTypes: List<RoomType>.from(json["roomTypes"].map((x) => RoomType.fromJson(x))),
        rooms: List<Room>.from(json["rooms"].map((x) => Room.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "hotelId": hotelId,
        "name": name,
        "address": address,
        "phone": phone,
        "email": email,
        "orders": List<dynamic>.from(orders!.map((x) => x)),
        "roomTypes": List<dynamic>.from(roomTypes!.map((x) => x.toJson())),
        "rooms": List<dynamic>.from(rooms!.map((x) => x.toJson())),
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

class Room {
    Room({
        this.roomId,
        this.hotelId,
        this.roomTypeId,
        this.name,
        this.roomType,
        this.roomOrders,
    });

    int? roomId;
    int? hotelId;
    int? roomTypeId;
    String? name;
    RoomType? roomType;
    List<dynamic>? roomOrders;

    factory Room.fromJson(Map<String, dynamic> json) => Room(
        roomId: json["roomId"],
        hotelId: json["hotelId"],
        roomTypeId: json["roomTypeId"],
        name: json["name"],
        roomType: RoomType.fromJson(json["roomType"]),
        roomOrders: List<dynamic>.from(json["roomOrders"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "roomId": roomId,
        "hotelId": hotelId,
        "roomTypeId": roomTypeId,
        "name": name,
        "roomType": roomType!.toJson(),
        "roomOrders": List<dynamic>.from(roomOrders!.map((x) => x)),
    };
}

class RoomOrder {
    RoomOrder({
        this.roomOrderId,
        this.orderId,
        this.roomId,
        this.room,
        this.orderDetails,
    });

    int? roomOrderId;
    int? orderId;
    int? roomId;
    Room? room;
    List<dynamic>? orderDetails;

    factory RoomOrder.fromJson(Map<String, dynamic> json) => RoomOrder(
        roomOrderId: json["roomOrderId"],
        orderId: json["orderId"],
        roomId: json["roomId"],
        room: Room.fromJson(json["room"]),
        orderDetails: List<dynamic>.from(json["orderDetails"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "roomOrderId": roomOrderId,
        "orderId": orderId,
        "roomId": roomId,
        "room": room!.toJson(),
        "orderDetails": List<dynamic>.from(orderDetails!.map((x) => x)),
    };
}

class OrderDetail {
    OrderDetail({
        this.orderDetailId,
        this.roomOrderId,
        this.employeeId,
        this.serviceId,
        this.price,
        this.quantity,
        this.employee,
        this.roomOrder,
    });

    int? orderDetailId;
    int? roomOrderId;
    int? employeeId;
    int? serviceId;
    int? price;
    int? quantity;
    Employee? employee;
    RoomOrder? roomOrder;

    factory OrderDetail.fromJson(Map<String, dynamic> json) => OrderDetail(
        orderDetailId: json["orderDetailId"],
        roomOrderId: json["roomOrderId"],
        employeeId: json["employeeId"],
        serviceId: json["serviceId"],
        price: json["price"],
        quantity: json["quantity"],
        employee: Employee.fromJson(json["employee"]),
        roomOrder: RoomOrder.fromJson(json["roomOrder"]),
    );

    Map<String, dynamic> toJson() => {
        "orderDetailId": orderDetailId,
        "roomOrderId": roomOrderId,
        "employeeId": employeeId,
        "serviceId": serviceId,
        "price": price,
        "quantity": quantity,
        "employee": employee!.toJson(),
        "roomOrder": roomOrder!.toJson(),
    };
}
