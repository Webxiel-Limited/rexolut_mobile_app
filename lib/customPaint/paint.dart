import 'dart:ui';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShapePainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTRB(50, 100, 200, 250);
    final startAngle = math.pi / 2;
    final sweepAngle = math.pi;
    final useCenter = false;
    var paint = Paint()
        ..color = Colors.white
        ..strokeWidth = 5.w
      ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round;

    // Offset startingPoint = Offset(2, size.height/ 2);

    canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
return false;
  }

}
