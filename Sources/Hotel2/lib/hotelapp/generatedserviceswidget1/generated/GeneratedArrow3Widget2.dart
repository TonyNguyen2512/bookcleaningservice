import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/svg/svg.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

/* Vector Arrow 3
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedArrow3Widget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransformHelper.rotate(
        a: -1.00,
        b: 0.00,
        c: -0.00,
        d: -1.00,
        child: Container(
          width: 40.000003814697266,
          height: 0.0,
          child: SvgWidget(painters: [
            SvgPathPainter.stroke(
              3.0,
              strokeJoin: StrokeJoin.miter,
            )
              ..addPath(
                  'M41.0607 1.06066C41.6465 0.474874 41.6465 -0.474874 41.0607 -1.06066L31.5147 -10.6066C30.9289 -11.1924 29.9792 -11.1924 29.3934 -10.6066C28.8076 -10.0208 28.8076 -9.07107 29.3934 -8.48528L37.8787 0L29.3934 8.48528C28.8076 9.07107 28.8076 10.0208 29.3934 10.6066C29.9792 11.1924 30.9289 11.1924 31.5147 10.6066L41.0607 1.06066ZM0 1.5L40 1.5L40 -1.5L0 -1.5L0 1.5Z')
              ..color = Color.fromARGB(127, 0, 0, 0),
          ]),
        ));
  }
}
