import 'package:flutter/material.dart';
import 'package:flutter_animations/animated_container_screen.dart';
import 'package:flutter_animations/animation_controller_screen.dart';
import 'package:flutter_animations/canvas_page.dart';
import 'package:flutter_animations/hero_page1.dart';
import 'package:flutter_animations/tween_animation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Animation Lab")),
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const CanvasPage()),
                );
              },
              child: const Text("Canvas Demo"),
            ),
            ElevatedButton(
              onPressed: () {
                   Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const AnimationControllerScreen()),
            );
              },
              child: const Text("Animation Controller Demo"),
            ),
             ElevatedButton(
              onPressed: () {
                   Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const AnimatedContainerScreen()),
            );
              },
              child: const Text("Animation Container Demo"),
            ),
           
            ElevatedButton(
              onPressed: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const HeroPage1()),
            );
              },
              child: const Text("Hero Demo"),
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const TweenAnimation()),
            );
              },
              child: const Text("Tween Animation Demo"),
            ),
          ],
        ),
      ),
    );
  }
}