import 'package:flutter/material.dart';
import 'package:flutterapp/hotelapp/cancelconfirmationwidget/generated/GeneratedRectangle73Widget.dart';
import 'package:flutterapp/hotelapp/cancelconfirmationwidget/generated/GeneratedNoWidget.dart';

/* Group Group 81
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroup81Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/GeneratedOrderWidget2'),
      child: Container(
        width: 83.0,
        height: 25.0,
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
                width: 83.0,
                height: 25.0,
                child: GeneratedRectangle73Widget(),
              ),
              Positioned(
                left: 30.0,
                top: 2.0,
                right: null,
                bottom: null,
                width: 28.0,
                height: 26.0,
                child: GeneratedNoWidget(),
              )
            ]),
      ),
    );
  }
}
