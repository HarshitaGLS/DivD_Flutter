import 'package:flutter/material.dart';
import 'package:flutter_feb10/task_list.dart';

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
        title:Row(
          children: [
            Text("My App"),
             TextButton(onPressed:(){
             Navigator.push(context, MaterialPageRoute(builder: (builder){
          return TaskList();
        }));
          }, child: Text("Tasks"))
          ],
        ),    
        
        actions: [
          IconButton(onPressed:(){
             Navigator.push(context, MaterialPageRoute(builder: (builder){
          return TaskList();
        }));
          }, icon: Icon(Icons.inbox))
        ],
      ),
      body:widget.mychildren
    );
  }
}