import 'package:flutter/material.dart';
import 'package:flutterapp/hotelapp/generatedhotelprofilewidget/generated/GeneratedBtCancel1Widget.dart';
import 'package:flutterapp/hotelapp/generatedhotelprofilewidget/generated/GeneratedGroup98Widget.dart';
import 'package:flutterapp/hotelapp/generatedhotelprofilewidget/generated/GeneratedHotelProfileWidget1.dart';
import 'package:flutterapp/hotelapp/generatedhotelprofilewidget/generated/GeneratedGroup6Widget.dart';
import 'package:flutterapp/hotelapp/generatedhotelprofilewidget/generated/GeneratedBtRoom1Widget.dart';
import 'package:flutterapp/hotelapp/generatedhotelprofilewidget/generated/GeneratedRectangle22Widget.dart';
import 'package:flutterapp/hotelapp/generatedhotelprofilewidget/generated/GeneratedBtSignout1Widget.dart';
import 'package:flutterapp/hotelapp/generatedhotelprofilewidget/generated/GeneratedBtUpdate1Widget.dart';
import 'package:flutterapp/hotelapp/generatedhotelprofilewidget/generated/GeneratedBackgroundWidget.dart';


class GeneratedHotelProfileWidget extends StatelessWidget {
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
                              left: 0.0,
                              top: 0.0,
                              right: null,
                              bottom: null,
                              width: 428.0,
                              height: 177.0,
                              child: GeneratedRectangle22Widget(),
                            ),
                            Positioned(
                              left: 1.0,
                              top: 137.0,
                              right: null,
                              bottom: null,
                              width: 428.0,
                              height: 652.0,
                              child: GeneratedGroup98Widget(),
                            ),
                            Positioned(
                              left: 12.0,
                              top: 869.0,
                              right: null,
                              bottom: null,
                              width: 187.0,
                              height: 36.0,
                              child: GeneratedBtCancel1Widget(),
                            ),
                            Positioned(
                              left: 224.0,
                              top: 815.0,
                              right: null,
                              bottom: null,
                              width: 187.0,
                              height: 36.0,
                              child: GeneratedBtUpdate1Widget(),
                            ),
                            Positioned(
                              left: 12.0,
                              top: 814.0,
                              right: null,
                              bottom: null,
                              width: 187.0,
                              height: 36.0,
                              child: GeneratedBtRoom1Widget(),
                            ),
                            Positioned(
                              left: 224.0,
                              top: 869.0,
                              right: null,
                              bottom: null,
                              width: 187.0,
                              height: 36.0,
                              child: GeneratedBtSignout1Widget(),
                            ),
                            Positioned(
                              left: 319.0,
                              top: 10.0,
                              right: null,
                              bottom: null,
                              width: 100.0,
                              height: 26.0,
                              child: GeneratedBackgroundWidget(),
                            ),
                            Positioned(
                              left: 16.0,
                              top: 21.0,
                              right: null,
                              bottom: null,
                              width: 111.0,
                              height: 101.0,
                              child: GeneratedGroup6Widget(),
                            ),
                            Positioned(
                              left: 174.0,
                              top: 56.0,
                              right: null,
                              bottom: null,
                              width: 205.0,
                              height: 44.0,
                              child: GeneratedHotelProfileWidget1(),
                            )
                          ]),
                    ))
              ])),
        );
      }),
    ));
  }
}
