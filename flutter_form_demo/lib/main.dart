import 'package:flutter/material.dart';
import 'package:flutter_form_demo/app_scaffold.dart';
import 'package:flutter_form_demo/login_page.dart';

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
      home:LoginPage()
    );
  }
}
