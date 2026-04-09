import 'package:flutter/material.dart';
import 'package:flutter_animations/hero_page2.dart';

class HeroPage1 extends StatelessWidget {
  const HeroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hero Demo - Page 1")),
      body:GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_)=>HeroPage2()));
        },
        child: Center(child: Hero(
          tag: "image1",
          child: Image.asset("assets/images/iphone.jpeg" , 
          height: 150, width: 150,))))
  
    );
  }
}