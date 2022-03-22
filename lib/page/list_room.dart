import 'dart:developer';

import 'package:bookcleaningservice/model/list_hotel_res.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../implement/get_list_room_imp.dart';
import '../model/list_room_res.dart';
import '../url/url_api.dart';

class ListRooms extends StatefulWidget {
  const ListRooms({ Key? key }) : super(key: key);

  @override
  State<ListRooms> createState() => _ListRoomsState();
}

class _ListRoomsState extends State<ListRooms> {
  List<ListRoomRes> result = [];
  @override
  void initState() {
    RoomRepImpl().getListRoom(UrlApi.GetRoom).then((value) => {
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
        title: Text('List All Rooms')
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
            'Room Name',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Room Type ID',
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
          ],
        ),
      ],
    )
    )
    )));
  }
}