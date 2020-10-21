import 'dart:ui';

import 'package:flutter/material.dart';

class MyCustomPainter extends CustomPainter {
  List<Offset> points;
  Color customColor;
  double customStroke;
  MyCustomPainter({this.points, this.customColor, this.customStroke});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = customColor
      ..strokeWidth = customStroke
      ..strokeCap = StrokeCap.round;

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i], points[i + 1], paint);
      }
    }
  }

  @override
  bool shouldRepaint(MyCustomPainter oldDelegate) =>
      oldDelegate.points != points;
}