import 'package:flutter/material.dart';

class TCustomCurvedEdges extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstCurve = Offset(0, size.height - 20);
    final lastCurve = Offset(30, size.height - 20);

    path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    final secondFirstCurve = Offset(0, size.height - 20);
    final secondLastdCurve = Offset(size.width - 30, size.height - 20);

    path.quadraticBezierTo(secondFirstCurve.dx, secondFirstCurve.dy, secondLastdCurve.dx, secondLastdCurve.dy);

    final thirdFirstCurve = Offset(size.width, size.height - 20);
    final thirdLastdCurve = Offset(size.width, size.height);

    path.quadraticBezierTo(thirdFirstCurve.dx, thirdFirstCurve.dy, thirdLastdCurve.dx, thirdLastdCurve.dy);

    path.lineTo(size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}