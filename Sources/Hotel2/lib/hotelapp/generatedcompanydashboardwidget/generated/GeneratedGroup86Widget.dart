import 'package:flutter/material.dart';
import 'package:flutterapp/hotelapp/generatedcompanydashboardwidget/generated/GeneratedProfileWidget.dart';
import 'package:flutterapp/hotelapp/generatedcompanydashboardwidget/generated/GeneratedEllipse2Widget.dart';

/* Group Group 86
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroup86Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 71.0,
      height: 68.0,
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
              width: 71.0,
              height: 68.0,
              child: GeneratedEllipse2Widget(),
            ),
            Positioned(
              left: 18.0,
              top: 27.0,
              right: null,
              bottom: null,
              width: 40.0,
              height: 19.0,
              child: GeneratedProfileWidget(),
            )
          ]),
    );
  }
}