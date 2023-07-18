import 'package:flutter/material.dart';

class SignUpBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 77, 81, 90)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.9966750, size.height * 0.2596250);
    path0.cubicTo(
        size.width * 0.7281500,
        size.height * 0.4735625,
        size.width * 0.4177750,
        size.height * 0.2562875,
        0,
        size.height * 0.4986750);
    path0.quadraticBezierTo(
        size.width * -0.0199750, size.height * 0.3852375, 0, 0);
    path0.lineTo(size.width, 0);
    path0.quadraticBezierTo(size.width * 0.9966750, size.height * 0.0449375,
        size.width * 0.9966750, size.height * 0.2596250);
    path0.close();

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path1 = Path();
    path1.moveTo(size.width, size.height * 0.6862500);
    path1.cubicTo(
        size.width * 0.9505000,
        size.height * 0.8383625,
        size.width * 0.5375000,
        size.height * 0.7851000,
        size.width * 0.3999500,
        size.height);
    path1.quadraticBezierTo(size.width * 0.5574500, size.height * 1.0083125,
        size.width, size.height);
    path1.quadraticBezierTo(size.width, size.height * 0.9215625, size.width,
        size.height * 0.6862500);
    path1.close();

    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
