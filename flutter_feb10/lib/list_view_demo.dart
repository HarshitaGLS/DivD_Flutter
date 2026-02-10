import 'package:flutter/material.dart';
import 'package:flutter_feb10/app_scaffold.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  List<String> names = ["aaa","bbb","bcc","ddd","eee","fff"];
  @override
  Widget build(BuildContext context) {
    return  AppScaffold(mychildren:  Stack(
      children: [
        Positioned( top:0, right:-100,
          child: Container(
            width:200,height:100,
            decoration: BoxDecoration(
              color: Colors.amber,
              shape:BoxShape.circle
            ),
          ),
        ),
        Align(alignment: Alignment.topCenter, child: Text("ListView Demo")),
        // ListView.builder(
        //   itemCount: names.length, 
        //   itemBuilder: (context,index){
        //     return ListTile(title:Text(names[index]), trailing: Icon(Icons.check),
        //     leading:CircleAvatar( backgroundColor:Color.fromRGBO(70, 12, 115, 0.6),
        //     child: Text(names[index].substring(0,1).toUpperCase()),),
        //     );
        //   }),
          ListView.separated(
          itemCount: names.length, 
          itemBuilder: (context,index){
            return ListTile(title:Text(names[index]), trailing: Icon(Icons.check),
            leading:CircleAvatar( backgroundColor:Color.fromRGBO(70, 12, 115, 0.6),
            child: Text(names[index].substring(0,1).toUpperCase()),),
            );
          },
          separatorBuilder: (context, index) { return Divider();   },
          )
      ])
    );
  }
}