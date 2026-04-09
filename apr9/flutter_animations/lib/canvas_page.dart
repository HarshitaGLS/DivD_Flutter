import 'package:flutter/material.dart';
import 'package:flutter_animations/mypainter.dart';
class CanvasPage extends StatefulWidget {
  const CanvasPage({super.key});

  @override
  State<CanvasPage> createState() => _CanvasPageState();
}

class _CanvasPageState extends State<CanvasPage>  with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Canvas Demo"),),
       body: CustomPaint(
        painter: Mypainter()
       )
    ); 
  }
}



/*
class CanvasPage extends StatefulWidget {
  const CanvasPage({super.key});

  @override
  State<CanvasPage> createState() => _CanvasPageState();
}

class _CanvasPageState extends State<CanvasPage>  with SingleTickerProviderStateMixin{
   late AnimationController controller;


  @override
  void initState() {
    super.initState();


    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
  }


  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Canvas Demo"),),
       body: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return CustomPaint(
            size: const Size(200, 200),
            painter: AnimatedCirclePainter(controller.value),
          );
        },
      ),
    );
 
  }
}




class AnimatedCirclePainter extends CustomPainter {
  final double value;


  AnimatedCirclePainter(this.value);


  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.orange;


    double radius = 30 + (value * 50);


    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      radius,
      paint,
    );
  }


  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}


*/