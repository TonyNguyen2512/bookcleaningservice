import 'dart:developer';

import 'package:bookcleaningservice/model/list_hotel_res.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../implement/get_list_hotel_imp.dart';
import '../url/url_api.dart';

class ListHotels extends StatefulWidget {
  const ListHotels({ Key? key }) : super(key: key);

  @override
  State<ListHotels> createState() => _ListHotelsState();
}

class _ListHotelsState extends State<ListHotels> {
  List<ListHotelRes> result = [];
  @override
  void initState() {
    HotelRepImpl().getListHotel(UrlApi.GetHotel).then((value) => {
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
        title: Text('List All Hotels')
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
            'Phone',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Address',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        )
      ],
      rows: <DataRow>[
        for (var item in result) 
        DataRow(
          cells: <DataCell>[
            DataCell(Text(item.name!)),
            DataCell(Text(item.phone!)),
            DataCell(Text(item.address!)),
          ],
        ),
      ],
    )
    )
    );
  }
}