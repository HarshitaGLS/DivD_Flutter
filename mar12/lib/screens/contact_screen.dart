import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  final String collegename, address ;
  const ContactScreen({super.key,required this.collegename , required this.address});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(title:Text("Navigation")), body: Text("Contact Us - $collegename at $address"));
  }
}