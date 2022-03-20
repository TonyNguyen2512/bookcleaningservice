import 'package:flutter/material.dart';
import 'package:flutterapp/hotelapp/generatedcartwidget/generated/GeneratedOrderdetail2Widget.dart';
import 'package:flutterapp/hotelapp/generatedcartwidget/generated/GeneratedGroup68Widget.dart';
import 'package:flutterapp/hotelapp/generatedcartwidget/generated/GeneratedGroup76Widget2.dart';
import 'package:flutterapp/hotelapp/generatedcartwidget/generated/GeneratedAdsWidget5.dart';


class GeneratedCartWidget extends StatelessWidget {
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
                              height: 160.0,
                              child: GeneratedAdsWidget5(),
                            ),
                            Positioned(
                              left: 11.0,
                              top: 714.0,
                              right: null,
                              bottom: null,
                              width: 404.0,
                              height: 71.0,
                              child: GeneratedGroup68Widget(),
                            ),
                            Positioned(
                              left: 13.0,
                              top: 175.0,
                              right: null,
                              bottom: null,
                              width: 402.0,
                              height: 517.0,
                              child: GeneratedOrderdetail2Widget(),
                            ),
                            Positioned(
                              left: 11.0,
                              top: 861.0,
                              right: null,
                              bottom: null,
                              width: 59.0,
                              height: 55.0,
                              child: GeneratedGroup76Widget2(),
                            )
                          ]),
                    ))
              ])),
        );
      }),
    ));
  }
}
