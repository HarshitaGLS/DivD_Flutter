import 'package:flutter/material.dart';
import 'package:flutter_feb10/app_scaffold.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  @override
  Widget build(BuildContext context) {
    return  AppScaffold(mychildren:  Text("ListView Demo"))
   ;
  }
}