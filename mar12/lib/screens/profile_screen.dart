import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String name;
  const ProfileScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(title:Text("Navigation")), body: Text("My Profile \n Welcome $name"));
  }
}