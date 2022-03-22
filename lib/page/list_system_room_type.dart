import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../implement/get_list_system_room_type_imp.dart';
import '../model/list_system_room_type_res.dart';
import '../url/url_api.dart';


class ListSystemRoomTypes extends StatefulWidget {
  const ListSystemRoomTypes({ Key? key }) : super(key: key);

  @override
  State<ListSystemRoomTypes> createState() => _ListSystemRoomTypesState();
}

class _ListSystemRoomTypesState extends State<ListSystemRoomTypes> {
  List<ListSystemRoomTypeRes> result = [];
  @override
  void initState() {
    SystemRoomTypeRepImpl().getListSystemRoomType(UrlApi.GetSystemRoomType).then((value) => {
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
        title: Text('List All System Room Types')
      ),
      body: Container(
        // child: ListView.builder(itemCount: result.length, itemBuilder: (context, index) {
        //   return ListTile(title: Text(result[index].name!));
        // },))
        child: SingleChildScrollView(
  scrollDirection: Axis.vertical,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
        child: DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Name',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'System Type ID',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        )
      ],
      rows: <DataRow>[
        for (var item in result) 
        DataRow(
          cells: <DataCell>[
            DataCell(Text(item.name!)),
            DataCell(Text(item.systemRoomTypeId!.toString())),
          ],
        ),
      ],
    )
    )
    )));
  }
}