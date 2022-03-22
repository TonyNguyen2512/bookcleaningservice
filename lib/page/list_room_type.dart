import 'dart:developer';

import 'package:bookcleaningservice/model/list_hotel_res.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../implement/get_list_room_type_imp.dart';
import '../model/list_room_type_res.dart';
import '../url/url_api.dart';

class ListRoomTypes extends StatefulWidget {
  const ListRoomTypes({ Key? key }) : super(key: key);

  @override
  State<ListRoomTypes> createState() => _ListRoomTypesState();
}

class _ListRoomTypesState extends State<ListRoomTypes> {
  List<ListRoomTypeRes> result = [];
  @override
  void initState() {
    RoomTypeRepImpl().getListRoomType(UrlApi.GetRoomType).then((value) => {
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
        title: Text('List All Room Types')
      ),
      body: Container(
        // child: ListView.builder(itemCount: result.length, itemBuilder: (context, index) {
        //   return ListTile(title: Text(result[index].name!));
        // },))
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
            'Type ID',
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
            DataCell(Text(item.roomTypeId!.toString())),
            DataCell(Text(item.systemRoomTypeId!.toString())),
          ],
        ),
      ],
    )
    )
    );
  }
}