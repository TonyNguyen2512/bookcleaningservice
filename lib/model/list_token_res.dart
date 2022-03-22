// To parse this JSON data, do
//
//     final listTokenRes = listTokenResFromJson(jsonString);

import 'dart:convert';


class ListTokenRes {
 static ListTokenRes listTokenResFromJson(String str) => ListTokenRes.fromJson(json.decode(str));

static String listTokenResToJson(ListTokenRes data) => json.encode(data.toJson());

    ListTokenRes({
        this.accountId,
        this.roleId,
        this.email,
        this.hotelId,
        this.companyId,
        this.role,
    });

    int? accountId;
    int? roleId;
    String? email;
    int? hotelId;
    int? companyId;
    Role? role;

    factory ListTokenRes.fromJson(Map<String, dynamic> json) => ListTokenRes(
        accountId: json["accountId"],
        roleId: json["roleId"],
        email: json["email"],
        hotelId: json["hotelId"],
        companyId: json["companyId"],
        role: Role.fromJson(json["role"]),
    );

    Map<String, dynamic> toJson() => {
        "accountId": accountId,
        "roleId": roleId,
        "email": email,
        "hotelId": hotelId,
        "companyId": companyId,
        "role": role!.toJson(),
    };
}

class Role {
    Role({
        this.roleId,
        this.roleName,
        this.accounts,
    });

    int? roleId;
    String? roleName;
    List<Account>? accounts;

    factory Role.fromJson(Map<String, dynamic> json) => Role(
        roleId: json["roleId"],
        roleName: json["roleName"],
        accounts: List<Account>.from(json["accounts"].map((x) => Account.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "roleId": roleId,
        "roleName": roleName,
        "accounts": List<dynamic>.from(accounts!.map((x) => x.toJson())),
    };
}

class Account {
    Account({
        this.accountId,
        this.roleId,
        this.email,
    });

    int? accountId;
    int? roleId;
    String? email;

    factory Account.fromJson(Map<String, dynamic> json) => Account(
        accountId: json["accountId"],
        roleId: json["roleId"],
        email: json["email"],
    );

    Map<String, dynamic> toJson() => {
        "accountId": accountId,
        "roleId": roleId,
        "email": email,
    };
}
