import 'package:flutter/material.dart';
import 'package:provider_sharedpref/models/task.dart';
import 'package:provider_sharedpref/screens/add_task_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    List<Task> tasks = [];

  void addTask(String title) {
    setState(() {
      tasks.add(Task(title: title));
    });
  }

  void navigateToAddTask() async {
    final newTask = await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => AddTaskScreen()),
    );

    if (newTask != null) {
      addTask(newTask);
    }
  }

  void toggleTask(int index) {
    setState(() {
      tasks[index].isDone = !tasks[index].isDone;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Tasks")),

      body: tasks.isEmpty
          ? Center(child: Text("No tasks"))
          : ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    tasks[index].title,
                    style: TextStyle(
                      decoration: tasks[index].isDone
                          ? TextDecoration.lineThrough
                          : null,
                    ),
                  ),
                  leading: Checkbox(
                    value: tasks[index].isDone,
                    onChanged: (_) => toggleTask(index),
                  ),
                );
              },
            ),

      floatingActionButton: FloatingActionButton(
         onPressed: navigateToAddTask,
        child: Icon(Icons.add),
      ),
    );
 
  }
}
