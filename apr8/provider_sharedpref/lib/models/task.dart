class Task {
  String title;
  bool isDone;

  Task({required this.title, this.isDone = false});


//for sharedpreferences
  //convert task object to json string
  Map<String,dynamic> tojson(){
    return {
      "title":title, "isDone":isDone
    };
  }

  //convert json string to task object
 factory Task.fromJSON(Map<String,dynamic> jsonstr){
      return Task(title: jsonstr["title"], isDone:jsonstr["isDone"]);
 }
}