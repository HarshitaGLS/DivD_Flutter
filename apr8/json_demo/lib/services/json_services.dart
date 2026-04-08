import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:json_demo/models/task.dart';

class JsonService {

  Future<List<Task>> loadTasks() async {
    final String data =
        await rootBundle.loadString('assets/tasks.json');

    final List jsonData = jsonDecode(data);

    return jsonData.map((e) => Task.fromJson(e)).toList();
  }
}