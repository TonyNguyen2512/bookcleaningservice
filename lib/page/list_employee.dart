import 'dart:developer';

import 'package:bookcleaningservice/implement/get_list_employee_imp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../implement/get_list_company_imp.dart';
import '../model/list_employee_res.dart';
import '../url/url_api.dart';

class ListEmployees extends StatefulWidget {
  const ListEmployees({ Key? key }) : super(key: key);

  @override
  State<ListEmployees> createState() => _ListEmployeesState();
}

class _ListEmployeesState extends State<ListEmployees> {
  List<ListEmployee> result = [];
  @override
  void initState() {
    EmployeeRepImpl().getListCompany(UrlApi.GetEmployee).then((value) => {
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
        title: Text('List All Employees')
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
            'Status',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ],
      rows: <DataRow>[
        for (var item in result) 
        DataRow(
          cells: <DataCell>[
            DataCell(Text(item.name!)),
            DataCell(Text(item.phone!)),
            DataCell(Text(item.address!)),
            DataCell(Text( item.status!.toString() == "1" ? "Free" : "Busy")),
          ],
        ),
      ],
    )
    )
    )
      )
    );
  }
}