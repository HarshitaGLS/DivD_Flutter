import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider_sharedpref/models/task.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TaskProvider extends ChangeNotifier{
    List<Task> _tasks =[];  
    List<Task> get tasks => _tasks;

//start of sharedpref
  void saveTasks()async{
    final prefs = await SharedPreferences.getInstance();
      List<String> taskList =
        _tasks.map((task) => jsonEncode(task.tojson())).toList();
    prefs.setStringList('tasks', taskList);
  }

  void loadTasks()async{
     final prefs = await SharedPreferences.getInstance();
    List<String>? taskList = prefs.getStringList('tasks');

    if (taskList != null) {
      _tasks = taskList
          .map((task) => Task.fromJSON(jsonDecode(task)))
          .toList();

      notifyListeners();
    }
  }

  TaskProvider(){
    loadTasks(); 
  }

  ////////////// end of sharefPref /////////////////
  
  void addTask(String title){
    _tasks.add(Task(title: title));
    saveTasks(); // for sharedPref
    notifyListeners();
  }

  void toggleTask(int index){
    _tasks[index].isDone = !_tasks[index].isDone;
    saveTasks(); // for sharedPref
    notifyListeners();
  }

}