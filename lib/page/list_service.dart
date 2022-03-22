import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../implement/get_list_employee_imp.dart';
import '../implement/get_list_service_imp.dart';
import '../model/list_service_res.dart';
import '../url/url_api.dart';

class ListServices extends StatefulWidget {
  const ListServices({ Key? key }) : super(key: key);

  @override
  State<ListServices> createState() => _ListServicesState();
}

class _ListServicesState extends State<ListServices> {
  List<ListService> result = [];
  @override
  void initState() {
    ServiceRepImpl().getListService(UrlApi.GetService).then((value) => {
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
        title: Text('List All Services')
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
            'Price',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ],
      rows: <DataRow>[
        for (var item in result) 
        DataRow(
          cells: <DataCell>[
            DataCell(Text(item.name!)),
            DataCell(Text(item.price!.toString())),
          ],
        ),
      ],
    )
    )
    );
  }
}