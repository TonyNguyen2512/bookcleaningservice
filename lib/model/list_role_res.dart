// To parse this JSON data, do
//
//     final listRoleRes = listRoleResFromJson(jsonString);

import 'dart:convert';


class ListRoleRes {
static  List<ListRoleRes> listRoleResFromJson(String str) => List<ListRoleRes>.from(json.decode(str).map((x) => ListRoleRes.fromJson(x)));

static String listRoleResToJson(List<ListRoleRes> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

    ListRoleRes({
        this.roleId,
        this.roleName,
        this.accounts,
    });

    int? roleId;
    String? roleName;
    List<dynamic>? accounts;

    factory ListRoleRes.fromJson(Map<String, dynamic> json) => ListRoleRes(
        roleId: json["roleId"],
        roleName: json["roleName"],
        accounts: List<dynamic>.from(json["accounts"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "roleId": roleId,
        "roleName": roleName,
        "accounts": List<dynamic>.from(accounts!.map((x) => x)),
    };
}
