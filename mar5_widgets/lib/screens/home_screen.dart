import 'package:flutter/material.dart';
import 'package:mar5_widgets/app_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return AppScaffold(mychild: Column(
    //   children: [
    //     Text("Home Screen"),
    //     SizedBox(height:40),
    //     LinearProgressIndicator(value:0.5 ,minHeight: 10,),
    //     CircularProgressIndicator()
    //   ],
    // ));
    return Column(
        children: [
        Text("Home Screen"),
        SizedBox(height:40),
        LinearProgressIndicator(value:0.5 ,minHeight: 10,),
        CircularProgressIndicator(),
        ElevatedButton(onPressed: (){
          showDialog(context: context, builder: (BuildContext builder){
            return AlertDialog(title: Text("Alert Message"),
            content:Text("This is a demo of alert box"),
            actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("ok"))
            ],);
          
          });
        }, child: Text("Alert Demo"))
        ],
    );
  }
}