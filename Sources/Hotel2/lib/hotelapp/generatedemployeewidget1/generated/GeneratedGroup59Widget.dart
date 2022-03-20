import 'package:flutter/material.dart';
import 'package:flutterapp/hotelapp/generatedemployeewidget1/generated/GeneratedShowdetailWidget2.dart';
import 'package:flutterapp/hotelapp/generatedemployeewidget1/generated/GeneratedRectangle36Widget2.dart';

/* Group Group 59
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroup59Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.pushNamed(context, '/GeneratedEmployeesDetailWidget'),
      child: Container(
        width: 112.0,
        height: 46.0,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              Positioned(
                left: 0.0,
                top: 0.0,
                right: null,
                bottom: null,
                width: 112.0,
                height: 46.0,
                child: GeneratedRectangle36Widget2(),
              ),
              Positioned(
                left: 19.0,
                top: 15.0,
                right: null,
                bottom: null,
                width: 75.0,
                height: 18.0,
                child: GeneratedShowdetailWidget2(),
              )
            ]),
      ),
    );
  }
}
