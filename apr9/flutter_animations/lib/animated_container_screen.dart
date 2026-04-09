import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() => _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  double height  = 300;
  double width  =  300;
  double rotatex =0;
  double rotatey =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Center(
        child: Column(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 400),
              transform: Matrix4.translationValues(30, 0, 0)..rotateX(rotatex)..rotateY(rotatey),
              height:height, width: width,color: Colors.blueAccent,),
            ElevatedButton(onPressed: (){
              setState(() {
                height = height-100;
                width = width-100;
                rotatex += 0.5;
                rotatey +=0.3;
              });
            }, child: Text("Animate It"))
          ],
        ),
)
    );
  }
}