import 'package:flutter/material.dart';

class Mypainter extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    //circle
    final circlepaint = Paint()
    ..color = Colors.redAccent
    ..style = PaintingStyle.stroke
    ..strokeWidth = 4;
    // ..style = PaintingStyle.fill;
    canvas.drawCircle(const Offset(100, 100), 50, circlepaint);


  //line
  final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 3;


    canvas.drawLine(
      const Offset(0, 0),
      const Offset(200, 200),
      linePaint,
    );

  //rect 
   final rectPaint = Paint()..color = Colors.red;
    canvas.drawRect(
      Rect.fromLTWH(50, 150, 100, 50),
      rectPaint,
    );

  // triangle 
    final cpaint = Paint()..color = Colors.purple;
    final path = Path();
    path.moveTo(100, 50);   // top
    path.lineTo(50, 150);   // left
    path.lineTo(150, 150);  // right
    path.close();
    canvas.drawPath(path, cpaint);
  }

   @override
  bool shouldRepaint(Mypainter oldDelegate) => false;

}