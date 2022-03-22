import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../implement/get_list_summary_imp.dart';
import '../model/list_summary_res.dart';
import '../url/url_api.dart';

class ListSummaries extends StatefulWidget {
  const ListSummaries({ Key? key }) : super(key: key);

  @override
  State<ListSummaries> createState() => _ListSummariesState();
}

class _ListSummariesState extends State<ListSummaries> {
  ListSummaryRes result = new ListSummaryRes();
  @override
  void initState() {
    SummaryRepImpl().getListService(UrlApi.GetSummary).then((value) => {
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
        title: Text('Summaries')
      ),
      body: Container(
        // child: ListView.builder(itemCount: result.length, itemBuilder: (context, index) {
        //   return ListTile(title: Text(result[index].name!));
        // },))
        child: DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Company',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Hotel',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Today \nOrders',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Total \nOrders',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ],
      rows: <DataRow>[
         
        DataRow(
          cells: <DataCell>[
            DataCell(Text(result.company.toString())),
            DataCell(Text(result.hotel.toString())),
            DataCell(Text(result.todayOrders.toString())),
            DataCell(Text(result.totalOrders.toString())),
          ],
        ),
      ],
    )
    )
    );
  }
}