import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'implement/get_list_company_imp.dart';
import 'model/list_company_res.dart';
import 'url/url_api.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<ListCompaniesRes> result = [];
  @override
  void initState() {
    CompanyRepImpl().getListCompany(UrlApi.GetApiCompanies).then((value) => {
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
        title: Text('Dashboard')
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
        ),
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