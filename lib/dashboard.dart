import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'implement/get_list_company_imp.dart';
import 'model/list_company_res.dart';
import 'page/list_company.dart';
import 'page/list_employee.dart';
import 'page/list_hotel.dart';
import 'page/list_hotel_member.dart';
import 'page/list_order.dart';
import 'page/list_role.dart';
import 'page/list_room.dart';
import 'page/list_room_type.dart';
import 'page/list_service.dart';
import 'page/list_summary.dart';
import 'page/list_system_room_type.dart';
import 'routes/routes.dart';
import 'url/url_api.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // List<ListCompaniesRes> result = [];
  // @override
  // void initState() {
  //   CompanyRepImpl().getListCompany(UrlApi.GetApiCompanies).then((value) => {
  //     log(value.toString()),
  //     setState(() {
  //       result = value;
  //     }),
  //   });
    
  //   super.initState();
  // }
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('Dashboard')
  //     ),
  //     body: Container(
  //       // child: ListView.builder(itemCount: result.length, itemBuilder: (context, index) {
  //       //   return ListTile(title: Text(result[index].name!));
  //       // },))
  //       child: DataTable(
  //     columns: const <DataColumn>[
  //       DataColumn(
  //         label: Text(
  //           'Name',
  //           style: TextStyle(fontStyle: FontStyle.italic),
  //         ),
  //       ),
  //       DataColumn(
  //         label: Text(
  //           'Phone',
  //           style: TextStyle(fontStyle: FontStyle.italic),
  //         ),
  //       ),
  //       DataColumn(
  //         label: Text(
  //           'Address',
  //           style: TextStyle(fontStyle: FontStyle.italic),
  //         ),
  //       ),
  //     ],
  //     rows: <DataRow>[
  //       for (var item in result) 
  //       DataRow(
  //         cells: <DataCell>[
  //           DataCell(Text(item.name!)),
  //           DataCell(Text(item.phone!)),
  //           DataCell(Text(item.address!)),
  //         ],
  //       ),
  //     ],
  //   )
  //   )
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard')
      ),
      body: Center(
        child: Column(
            children: [
              ElevatedButton(child: Text('Roles'),
                  onPressed: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ListRoles(),))
                  }), 
                  ElevatedButton(child: Text('Rooms'),
                  onPressed: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ListRooms(),))
                  }), 
                  ElevatedButton(child: Text('Room Types'),
                  onPressed: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ListRoomTypes(),))
                  }), 
                  ElevatedButton(child: Text('System Room Types'),
                  onPressed: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ListSystemRoomTypes(),))
                  }),
              ElevatedButton(child: Text('Companies'),
                  onPressed: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ListOtherCompany(),))
                  }), // ElevatedButton
              ElevatedButton(child: Text('Company Employees'),
                  onPressed: () async {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ListEmployees(),));
                  }), // ElevatedButton
                  ElevatedButton(child: Text('Services'),
                  onPressed: () async {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ListServices(),));
                  }),
                  ElevatedButton(child: Text('Hotels'),
                  onPressed: () async {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ListHotels(),));
                  }),
                  ElevatedButton(child: Text('Hotel Members'),
                  onPressed: () async {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ListHotelMembers(),));
                  }),
                  ElevatedButton(child: Text('Orders'),
                  onPressed: () async {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ListOrders(),));
                  }),
                  ElevatedButton(child: Text('Summary'),
                  onPressed: () async {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ListSummaries(),));
                  }),
            ],
          ),
      )
    );
  }
}