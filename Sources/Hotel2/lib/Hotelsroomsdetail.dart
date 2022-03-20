import 'package:flutter/material.dart';
import 'package:flutterapp/hotelapp/generatedhotelsroomsdetailwidget/generated/GeneratedGroup97Widget.dart';
import 'package:flutterapp/hotelapp/generatedhotelsroomsdetailwidget/generated/GeneratedGroup77Widget.dart';


class GeneratedHotelsroomsdetailWidget extends StatelessWidget {
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
                              top: 21.0,
                              right: null,
                              bottom: null,
                              width: 428.0,
                              height: 133.0,
                              child: GeneratedGroup97Widget(),
                            ),
                            Positioned(
                              left: 17.0,
                              top: 856.0,
                              right: null,
                              bottom: null,
                              width: 59.0,
                              height: 55.0,
                              child: GeneratedGroup77Widget(),
                            )
                          ]),
                    ))
              ])),
        );
      }),
    ));
  }
}
