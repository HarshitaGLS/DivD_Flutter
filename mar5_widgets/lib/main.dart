import 'package:flutter/material.dart';
import 'package:mar5_widgets/app_scaffold.dart';
import 'package:mar5_widgets/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home:HomeScreen()
      home: AppScaffold(),
    );
  }
}
