import 'package:flutter/material.dart';

class CounterStfWidget extends StatefulWidget {
  const CounterStfWidget({super.key});

  @override
  State<CounterStfWidget> createState() => _CounterStfWidgetState();
}

class _CounterStfWidgetState extends State<CounterStfWidget> {
  int count = 0;
  void increment(){setState(() {count++;});}
  @override
  Widget build(BuildContext context) {    
    return Column(children: [
      Text("Counter App"),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        ElevatedButton(onPressed: increment, child: Text("+")),
        ElevatedButton(onPressed: (){setState(() {count--;});}, child: Text("-")),
        ElevatedButton(onPressed: (){setState(() {count =0;});}, child: Text("Reset")),
        ElevatedButton(onPressed: (){setState(() {count = -count;});}, child: Text("Change Sign")),
      ],),
     
      Text("count = $count")
    ],);
  }
}