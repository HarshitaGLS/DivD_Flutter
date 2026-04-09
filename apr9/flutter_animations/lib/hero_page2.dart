import 'package:flutter/material.dart';

class HeroPage2 extends StatelessWidget {
  const HeroPage2({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: const Text("Hero Demo - Page 2")),
      body: Center(
        child: Hero(tag:"image1", child: Image.asset("assets/images/iphone.jpeg" , height: 450, width: 450,)))
  
    );
  
  }
}