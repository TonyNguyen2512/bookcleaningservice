import 'package:flutter/material.dart';
import 'package:flutterapp/hotelapp/generatedorderwidget2/generated/GeneratedRectangle70Widget.dart';
import 'package:flutterapp/hotelapp/generatedorderwidget2/generated/GeneratedCancelWidget4.dart';

/* Group Group 79
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroup79Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.pushNamed(context, '/GeneratedCancelconfirmationWidget'),
      child: Container(
        width: 114.0,
        height: 33.0,
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
                width: 114.0,
                height: 33.0,
                child: GeneratedRectangle70Widget(),
              ),
              Positioned(
                left: 29.0,
                top: 5.0,
                right: null,
                bottom: null,
                width: 61.0,
                height: 26.0,
                child: GeneratedCancelWidget4(),
              )
            ]),
      ),
    );
  }
}