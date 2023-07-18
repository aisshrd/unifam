import 'package:flutter/material.dart';

class SignInBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //Third Curve
    Paint paint2 = Paint()
      ..color = const Color.fromARGB(255, 97, 176, 241)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path2 = Path();
    path2.moveTo(size.width, size.height * 0.4767911);
    path2.quadraticBezierTo(size.width * 0.9196429, size.height * 0.4789985,
        size.width * 0.8188776, size.height * 0.4704844);
    path2.quadraticBezierTo(size.width * 0.6760204, size.height * 0.4550328,
        size.width * 0.5765306, size.height * 0.3859738);
    path2.lineTo(size.width * 0.5102041, size.height * 0.2510091);
    path2.lineTo(size.width * 0.5076531, size.height * 0.0012614);
    path2.lineTo(size.width * 0.9948980, size.height * 0.0025227);
    path2.lineTo(size.width, size.height * 0.4767911);
    path2.close();

    canvas.drawPath(path2, paint2);

    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 67, 72, 76)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    //First Curve
    Path path0 = Path();
    path0.moveTo(size.width, size.height * 0.0832492);
    path0.quadraticBezierTo(size.width * 0.9732143, size.height * 0.1163597,
        size.width * 0.9056122, size.height * 0.1374874);
    path0.cubicTo(
        size.width * 0.8469388,
        size.height * 0.1564077,
        size.width * 0.6198980,
        size.height * 0.1841574,
        size.width * 0.5663265,
        size.height * 0.2674067);
    path0.cubicTo(
        size.width * 0.5389031,
        size.height * 0.3415111,
        size.width * 0.6473214,
        size.height * 0.4168769,
        size.width * 0.4770408,
        size.height * 0.4427346);
    path0.quadraticBezierTo(size.width * 0.3290816, size.height * 0.4581862, 0,
        size.height * 0.3569627);
    path0.lineTo(size.width * 0.0025510, size.height * 0.0012614);
    path0.lineTo(size.width, 0);
    path0.lineTo(size.width, size.height * 0.0832492);
    path0.close();

    canvas.drawPath(path0, paint0);

    //Second Curve
    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 255, 174, 71)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path1 = Path();
    path1.moveTo(size.width * 0.7704082, size.height * -0.0012614);
    path1.quadraticBezierTo(size.width * 0.7340561, size.height * 0.0299571,
        size.width * 0.6326531, size.height * 0.0378406);
    path1.cubicTo(
        size.width * 0.5465561,
        size.height * 0.0391019,
        size.width * 0.3590561,
        size.height * 0.0302725,
        size.width * 0.2831633,
        size.height * 0.0542381);
    path1.cubicTo(
        size.width * 0.2149235,
        size.height * 0.0731584,
        size.width * 0.1575255,
        size.height * 0.1261352,
        size.width * 0.1147959,
        size.height * 0.1778507);
    path1.quadraticBezierTo(size.width * 0.0918367, size.height * 0.2008703,
        size.width * 0.0025510, size.height * 0.1980323);
    path1.lineTo(size.width * 0.0025510, size.height * -0.0012614);
    path1.lineTo(size.width * 0.7704082, size.height * -0.0012614);
    path1.close();

    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
