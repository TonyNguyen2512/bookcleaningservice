import 'dart:developer';

import 'package:bookcleaningservice/model/list_hotel_res.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../implement/get_list_hotel_imp.dart';
import '../implement/get_list_role_imp.dart';
import '../model/list_role_res.dart';
import '../url/url_api.dart';

class ListRoles extends StatefulWidget {
  const ListRoles({ Key? key }) : super(key: key);

  @override
  State<ListRoles> createState() => _ListRolesState();
}

class _ListRolesState extends State<ListRoles> {
  List<ListRoleRes> result = [];
  @override
  void initState() {
    RoleRepImpl().getListRole(UrlApi.GetRole).then((value) => {
      log(value.toString()),
      setState(() {
        result = value;
      }),
    });
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List All Roles')
      ),
      body: Container(
        // child: ListView.builder(itemCount: result.length, itemBuilder: (context, index) {
        //   return ListTile(title: Text(result[index].name!));
        // },))
        child: DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Role ID',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Role Name',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        )
      ],
      rows: <DataRow>[
        for (var item in result) 
        DataRow(
          cells: <DataCell>[
            DataCell(Text(item.roleId!.toString())),
            DataCell(Text(item.roleName!)),
          ],
        ),
      ],
    )
    )
    );
  }
}