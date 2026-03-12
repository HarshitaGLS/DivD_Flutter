import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigations"),
        actions: [
          PopupMenuButton(itemBuilder: (itemBuilder){
            return [
              PopupMenuItem(child: Text("Profile") , onTap: (){},),
              PopupMenuItem(child: Text("Settings") , onTap: (){},),
              PopupMenuItem(child: Row(children: [Icon(Icons.logout), Text("Logout")] ) , onTap: (){},)
            ];
          })
        ],
      ),
      body: Column(
        children: [
          Text("Home Screen"),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/profile" , arguments: "Harshita");
          }, child: Text("Profile")),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/contact", arguments: {
              "collegename":"GLS University", "address":"Law Garden"
            });
      
          }, child: Text("Contact Us")),
        ],
      ),
    );
  }
}