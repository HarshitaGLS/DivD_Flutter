import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/MainWidget.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text("Basic Widgets" , 
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 25 , letterSpacing: 5,
          fontFamily: "Macondo"),),
        ),
        // body:Image(
        //   image: AssetImage("assets/images/a.png"),
        //   width: double.infinity,height: double.infinity, semanticLabel: "Loading Image....",
        //   repeat: ImageRepeat.repeat, fit: BoxFit.fill,
        //   )
        body:Mainwidget()
      )
    );
  }
}