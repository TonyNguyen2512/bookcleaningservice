import 'package:flutter/material.dart';
import 'package:flutterapp/Login.dart';
import 'package:flutterapp/Registration.dart';
import 'package:flutterapp/hotelapp/generatedcompanydashboardwidget/GeneratedCompanyDashboardWidget.dart';
import 'package:flutterapp/hotelapp/generatedforgotpasswordwidget/GeneratedForgotPasswordWidget.dart';
import 'package:flutterapp/HotelDashboard.dart';
import 'package:flutterapp/hotelapp/generatediphone13promax1widget/GeneratedIPhone13ProMax1Widget.dart';
import 'package:flutterapp/HotelProfile.dart';
import 'package:flutterapp/hotelapp/generatedcompanyprofilewidget/GeneratedCompanyProfileWidget.dart';
import 'package:flutterapp/hotelapp/generatedemployeesdetailwidget/GeneratedEmployeesDetailWidget.dart';
import 'package:flutterapp/OrdersDetail.dart';
import 'package:flutterapp/Hotelsroomsdetail.dart';
import 'package:flutterapp/hotelapp/generatedemployeewidget1/GeneratedEmployeeWidget1.dart';
import 'package:flutterapp/Bookingpage.dart';
import 'package:flutterapp/Orders.dart';
import 'package:flutterapp/hotelapp/generatedserviceswidget1/GeneratedServicesWidget1.dart';
import 'package:flutterapp/ShowComanydetail.dart';
import 'package:flutterapp/CartPage.dart';
import 'package:flutterapp/hotelapp/generatedorderwidget2/GeneratedOrderWidget2.dart';
import 'package:flutterapp/CancelComfimPage.dart';

void main() {
  runApp(HotelApp());
}

class HotelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/GeneratedLoginWidget',
      routes: {
        '/GeneratedLoginWidget': (context) => GeneratedLoginWidget(),
        '/GeneratedRegistrationWidget': (context) =>
            GeneratedRegistrationWidget(),
        '/GeneratedCompanyDashboardWidget': (context) =>
            GeneratedCompanyDashboardWidget(),
        '/GeneratedForgotPasswordWidget': (context) =>
            GeneratedForgotPasswordWidget(),
        '/GeneratedHotelDashboardWidget': (context) =>
            GeneratedHotelDashboardWidget(),
        '/GeneratedIPhone13ProMax1Widget': (context) =>
            GeneratedIPhone13ProMax1Widget(),
        '/GeneratedHotelProfileWidget': (context) =>
            GeneratedHotelProfileWidget(),
        '/GeneratedCompanyProfileWidget': (context) =>
            GeneratedCompanyProfileWidget(),
        '/GeneratedEmployeesDetailWidget': (context) =>
            GeneratedEmployeesDetailWidget(),
        '/GeneratedOrdersDetailWidget': (context) =>
            GeneratedOrdersDetailWidget(),
        '/GeneratedHotelsroomsdetailWidget': (context) =>
            GeneratedHotelsroomsdetailWidget(),
        '/GeneratedEmployeeWidget1': (context) => GeneratedEmployeeWidget1(),
        '/GeneratedBookingpageWidget': (context) =>
            GeneratedBookingpageWidget(),
        '/GeneratedOrdersWidget1': (context) => GeneratedOrdersWidget1(),
        '/GeneratedServicesWidget1': (context) => GeneratedServicesWidget1(),
        '/GeneratedShowComanydetailWidget': (context) =>
            GeneratedShowComanydetailWidget(),
        '/GeneratedCartWidget': (context) => GeneratedCartWidget(),
        '/GeneratedOrderWidget2': (context) => GeneratedOrderWidget2(),
        '/GeneratedCancelconfirmationWidget': (context) =>
            GeneratedCancelconfirmationWidget(),
      },
    );
  }
}
