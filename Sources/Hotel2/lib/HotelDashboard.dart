import 'package:flutter/material.dart';
import 'package:flutterapp/hotelapp/generatedhoteldashboardwidget/generated/GeneratedRectangle11Widget.dart';
import 'package:flutterapp/hotelapp/generatedhoteldashboardwidget/generated/GeneratedGroup87Widget.dart';
import 'package:flutterapp/hotelapp/generatedhoteldashboardwidget/generated/GeneratedBtBookingWidget.dart';
import 'package:flutterapp/hotelapp/generatedhoteldashboardwidget/generated/GeneratedBtOrderWidget.dart';
import 'package:flutterapp/hotelapp/generatedhoteldashboardwidget/generated/GeneratedRectangle9Widget1.dart';


class GeneratedHotelDashboardWidget extends StatelessWidget {
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
                              left: 337.0,
                              top: 844.0,
                              right: null,
                              bottom: null,
                              width: 71.0,
                              height: 68.0,
                              child: GeneratedGroup87Widget(),
                            ),
                            Positioned(
                              left: 0.0,
                              top: 0.0,
                              right: null,
                              bottom: null,
                              width: 428.0,
                              height: 306.0,
                              child: GeneratedRectangle9Widget1(),
                            ),
                            Positioned(
                              left: 0.0,
                              top: 217.0,
                              right: null,
                              bottom: null,
                              width: 428.0,
                              height: 113.0,
                              child: GeneratedRectangle11Widget(),
                            ),
                            Positioned(
                              left: 36.0,
                              top: 234.0,
                              right: null,
                              bottom: null,
                              width: 80.0,
                              height: 80.0,
                              child: GeneratedBtBookingWidget(),
                            ),
                            Positioned(
                              left: 167.0,
                              top: 235.0,
                              right: null,
                              bottom: null,
                              width: 80.0,
                              height: 80.0,
                              child: GeneratedBtOrderWidget(),
                            )
                          ]),
                    ))
              ])),
        );
      }),
    ));
  }
}
