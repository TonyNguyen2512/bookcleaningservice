import 'package:flutter/material.dart';
import 'package:flutterapp/hotelapp/generatedloginwidget/generated/GeneratedGroup91Widget.dart';
import 'package:flutterapp/hotelapp/generatedloginwidget/generated/GeneratedGroup90Widget.dart';
import 'package:flutterapp/hotelapp/generatedloginwidget/generated/GeneratedGroup4Widget.dart';
import 'package:flutterapp/hotelapp/generatedloginwidget/generated/GeneratedGroup84Widget.dart';
import 'package:flutterapp/hotelapp/generatedloginwidget/generated/GeneratedGroup2Widget.dart';
import 'package:flutterapp/hotelapp/generatedloginwidget/generated/GeneratedForgotpasswordWidget.dart';

class GeneratedLoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ClipRRect(
      borderRadius: BorderRadius.zero,
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
              height: 926.0,
              child: Stack(children: [
                Container(
                    width: constraints.maxWidth,
                    child: Container(
                      width: 428.0,
                      height: 926.0,
                      child: Stack(
                          fit: StackFit.expand,
                          alignment: Alignment.center,
                          overflow: Overflow.visible,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.zero,
                              child: Container(
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            Positioned(
                              left: 36.0,
                              top: 496.8977355957031,
                              right: null,
                              bottom: null,
                              width: 365.0,
                              height: 44.2613639831543,
                              child: GeneratedGroup91Widget(),
                            ),
                            Positioned(
                              left: 136.0,
                              top: 842.0,
                              right: null,
                              bottom: null,
                              width: 155.0,
                              height: 40.0,
                              child: GeneratedGroup84Widget(),
                            ),
                            Positioned(
                              left: 36.0,
                              top: 434.0,
                              right: null,
                              bottom: null,
                              width: 378.0,
                              height: 78.0397720336914,
                              child: GeneratedGroup90Widget(),
                            ),
                            Positioned(
                              left: 203.0,
                              top: 597.0681762695312,
                              right: null,
                              bottom: null,
                              width: 187.0,
                              height: 41.931819915771484,
                              child: GeneratedGroup2Widget(),
                            ),
                            Positioned(
                              left: 36.0,
                              top: 608.0,
                              right: null,
                              bottom: null,
                              width: 168.0,
                              height: 20.0,
                              child: GeneratedForgotpasswordWidget(),
                            ),
                            Positioned(
                              left: 118.0,
                              top: 68.0,
                              right: null,
                              bottom: null,
                              width: 227.0,
                              height: 181.0,
                              child: GeneratedGroup4Widget(),
                            )
                          ]),
                    ))
              ])),
        );
      }),
    ));
  }
}
