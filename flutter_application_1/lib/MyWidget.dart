import 'package:flutter/material.dart';
import 'package:flutter_application_1/StfWidget.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("FlutterApp"),
      ),
      body:Column(
        children: [
           Text("This is first flutter web app"),
           Stfwidget(),
           Text("column demo")
        ],
      )
     
    )
  );
  }
}
