import 'package:flutter/cupertino.dart';

import '../common/constants/colors/colors.dart';

class SemiArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColor.surfaceTextColor // Set your desired color here
      ..style = PaintingStyle.stroke
      ..strokeWidth = 7
      ..strokeCap = StrokeCap.round; // Set the line cap to round

    final rect = Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: size.width / 2.2,
    );

    canvas.drawArc(
      rect,
      -0.5, // Adjust the starting angle to rotate the arc
      -2.64, // Adjust the angle to create the desired semi arc shape
      false, // Set to false to draw only the outline
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
