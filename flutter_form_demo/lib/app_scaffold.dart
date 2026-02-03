import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;
  const AppScaffold({required this.child,super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo App"),
        backgroundColor: Colors.blue,
      ),
      body:child,
    );
  }
}