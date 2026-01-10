import 'package:flutter/material.dart';

class Stfwidget extends StatefulWidget {
  const Stfwidget({super.key});

  @override
  State<Stfwidget> createState() => _StfwidgetState();
}

class _StfwidgetState extends State<Stfwidget> {
  String str = "My Button";
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
          child: Text(str),
          onPressed: (){
            setState(() {
              str= "Button Clicked";
            });
          },
          );
  }
}