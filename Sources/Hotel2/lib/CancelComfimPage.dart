import 'package:flutter/material.dart';
import 'package:flutterapp/hotelapp/cancelconfirmationwidget/generated/GeneratedCancelWidget5.dart';

class GeneratedCancelconfirmationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        width: 381.0,
        height: 245.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(
            width: 4.0,
            color: Color.fromARGB(102, 0, 0, 0),
          ),
        ),
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Positioned(
                left: 0.0,
                top: 0.0,
                right: null,
                bottom: null,
                width: 381.0,
                height: 245.0,
                child: GeneratedCancelWidget5(),
              )
            ]),
      ),
    ));
  }
}
