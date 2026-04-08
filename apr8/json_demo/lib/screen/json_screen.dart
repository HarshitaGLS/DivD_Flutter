import 'package:flutter/material.dart';
import 'package:json_demo/models/task.dart';
import 'package:json_demo/services/json_services.dart';

class JsonScreen extends StatefulWidget {
  const JsonScreen({super.key});

  @override
  State<JsonScreen> createState() => _JsonScreenState();
}

class _JsonScreenState extends State<JsonScreen> {
  List<Task> tasks = [];
  final JsonService service = JsonService();

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    tasks = await service.loadTasks();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("JSON Tasks")),

      body: tasks.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(tasks[index].title),
                  leading: Checkbox(
                    value: tasks[index].isDone,
                    onChanged: (_) {},
                  ),
                );
              },
            ),
    );
 
  }
}

