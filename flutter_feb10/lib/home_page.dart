import 'package:flutter/material.dart';
import 'package:flutter_feb10/app_scaffold.dart';
import 'package:flutter_feb10/list_view_demo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(mychildren: 
    Column(
      children: [Text("Home Page"),
      TextButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (builder){
          return ListViewDemo();
        }));
      }, child: Text("View List")),

      TextButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext builder){ return AppScaffold(mychildren: Text("This is about us page"));
        }));
      }, child: Text("About Us"))
      ],
    )
    );
  }
}