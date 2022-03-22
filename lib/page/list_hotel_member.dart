import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../implement/get_list_hotel_member_imp.dart';
import '../model/list_hotel_member_res.dart';
import '../url/url_api.dart';

class ListHotelMembers extends StatefulWidget {
  const ListHotelMembers({ Key? key }) : super(key: key);

  @override
  State<ListHotelMembers> createState() => _ListHotelMembersState();
}

class _ListHotelMembersState extends State<ListHotelMembers> {
  List<ListHotelMemberRes> result = [];
  @override
  void initState() {
    HotelMemberRepImpl().getListHotelMember(UrlApi.GetEmployee).then((value) => {
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
        title: Text('List All Hotel Members')
      ),
      body: Container(
        // child: ListView.builder(itemCount: result.length, itemBuilder: (context, index) {
        //   return ListTile(title: Text(result[index].name!));
        // },))
        child: DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Phone',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Addr',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Email',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ],
      rows: <DataRow>[
        for (var item in result) 
        DataRow(
          cells: <DataCell>[
            DataCell(Text(item.phone!)),
            DataCell(Text(item.address!)),
            DataCell(Text(item.email!))
          ],
        ),
      ],
    )
    )
    );
  }
}