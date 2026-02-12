import 'package:flutter/material.dart';
import 'package:flutter_feb10/TaskClass.dart';
import 'package:flutter_feb10/app_scaffold.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Taskclass> mytasklist = [
  Taskclass(taskname:"to start working on forms"),
  Taskclass(taskname:"forms validations",completed:true),
];

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      mychildren:ListView.builder(
        itemCount: mytasklist.length,
        itemBuilder: (context,index){
          return Card( elevation: 10,shadowColor: Colors.cyan,
            child: ListTile(title:Text(mytasklist[index].taskname.toString()),
            subtitle: Text(mytasklist[index].completed!  ? "Done":"not done"),
            trailing: Checkbox(value: mytasklist[index].completed, onChanged: (value){
              setState(() {
                 mytasklist[index].completed = value;
              });
            }),
            ),
          );
        }));
  }
}