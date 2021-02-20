import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.67, size.height * 0.17);
    path_0.quadraticBezierTo(size.width * 0.67, size.height * 0.67,
        size.width * 0.67, size.height * 0.82);
    path_0.quadraticBezierTo(size.width * -0.29, size.height * 0.50,
        size.width * 0.67, size.height * 0.17);
    path_0.close();

    canvas.drawShadow(path_0, Colors.black.withOpacity(0.8), 4.0, false);
    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
