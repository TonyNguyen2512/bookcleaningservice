import 'package:flutter/material.dart';
import 'package:flutterapp/hotelapp/generatedorderswidget1/generated/GeneratedShowdetailWidget6.dart';
import 'package:flutterapp/hotelapp/generatedorderswidget1/generated/GeneratedRectangle36Widget6.dart';

/* Group Group 57
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroup57Widget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/GeneratedOrdersDetailWidget'),
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
                child: GeneratedRectangle36Widget6(),
              ),
              Positioned(
                left: 19.0,
                top: 15.0,
                right: null,
                bottom: null,
                width: 75.0,
                height: 18.0,
                child: GeneratedShowdetailWidget6(),
              )
            ]),
      ),
    );
  }
}