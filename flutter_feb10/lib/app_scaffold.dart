import 'package:flutter/material.dart';

class AppScaffold extends StatefulWidget {
  final Widget mychildren;
  const AppScaffold({super.key, required this.mychildren});

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("My App")
      ),
      body:widget.mychildren
    );
  }
}