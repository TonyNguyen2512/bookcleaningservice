import 'package:flutter/material.dart';
import 'package:flutterapp/hotelapp/generatedregistrationwidget/generated/GeneratedGroup88Widget.dart';
import 'package:flutterapp/hotelapp/generatedregistrationwidget/generated/GeneratedGroup85Widget.dart';
import 'package:flutterapp/hotelapp/generatedregistrationwidget/generated/GeneratedRegistrationWidget1.dart';
import 'package:flutterapp/hotelapp/generatedregistrationwidget/generated/GeneratedGroup4Widget1.dart';
import 'package:flutterapp/hotelapp/generatedregistrationwidget/generated/GeneratedGroup92Widget.dart';

class GeneratedRegistrationWidget extends StatelessWidget {
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
                              left: 85.0,
                              top: 335.0,
                              right: null,
                              bottom: null,
                              width: 262.0,
                              height: 61.0,
                              child: GeneratedRegistrationWidget1(),
                            ),
                            Positioned(
                              left: 25.0,
                              top: 443.0,
                              right: null,
                              bottom: null,
                              width: 365.0,
                              height: 38.0,
                              child: GeneratedGroup88Widget(),
                            ),
                            Positioned(
                              left: 87.0,
                              top: 582.0,
                              right: null,
                              bottom: null,
                              width: 234.0,
                              height: 36.0,
                              child: GeneratedGroup85Widget(),
                            ),
                            Positioned(
                              left: 100.0,
                              top: 76.0,
                              right: null,
                              bottom: null,
                              width: 227.0,
                              height: 181.0,
                              child: GeneratedGroup4Widget1(),
                            ),
                            Positioned(
                              left: 25.0,
                              top: 500.0,
                              right: null,
                              bottom: null,
                              width: 378.0,
                              height: 67.0,
                              child: GeneratedGroup92Widget(),
                            )
                          ]),
                    ))
              ])),
        );
      }),
    ));
  }
}
