import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/svg/svg.dart';

/* Ellipse Ellipse 12
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedEllipse12Widget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.pushNamed(context, '/GeneratedHotelDashboardWidget'),
      child: Container(
        width: 59.0,
        height: 55.0,
        child: SvgWidget(painters: [
          SvgPathPainter.fill()
            ..addPath(
                'M59 27.5C59 42.6878 45.7924 55 29.5 55C13.2076 55 0 42.6878 0 27.5C0 12.3122 13.2076 0 29.5 0C45.7924 0 59 12.3122 59 27.5Z')
            ..color = Color.fromARGB(255, 205, 214, 255),
          SvgPathPainter.stroke(
            4.0,
            strokeJoin: StrokeJoin.miter,
          )
            ..addPath(
                'M55 27.5C55 40.2188 43.8524 51 29.5 51L29.5 59C47.7324 59 63 45.1568 63 27.5L55 27.5ZM29.5 51C15.1476 51 4 40.2188 4 27.5L-4 27.5C-4 45.1568 11.2676 59 29.5 59L29.5 51ZM4 27.5C4 14.7812 15.1476 4 29.5 4L29.5 -4C11.2676 -4 -4 9.84318 -4 27.5L4 27.5ZM29.5 4C43.8524 4 55 14.7812 55 27.5L63 27.5C63 9.84318 47.7324 -4 29.5 -4L29.5 4Z')
            ..color = Color.fromARGB(127, 0, 0, 0),
        ]),
      ),
    );
  }
}