import 'package:flutter/material.dart';
import 'package:mar17/message_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mar17 Widgets Demo',
      debugShowCheckedModeBanner: false,
       home: TabDemoScreen()
    );
  }
}


class TabDemoScreen extends StatefulWidget {
  const TabDemoScreen({super.key});

  @override
  State<TabDemoScreen> createState() => _TabDemoScreenState();
}

class _TabDemoScreenState extends State<TabDemoScreen> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title:Text("Home"),
          actions: [
            Switch(value: isDark, onChanged: (val){setState(() {
              isDark = val;
            });}),
          ],
          bottom: TabBar(
            labelColor: Colors.teal,
            indicatorColor: Colors.amber,
            unselectedLabelColor: Colors.blueAccent,
            tabs: [
             Tab(icon:Icon(Icons.message),child:Text("Messages")),
            Icon(Icons.list),
            Icon(Icons.video_call),
          ]),
        ),
        body: TabBarView(children: [
          MessageScreen(),
          Text("Status Screen"),
          Column(
            children: [
              Text("Call Screen"),
              ElevatedButton(onPressed: (){}, child: Text("Button"))
            ],
          )
        ]),
      ),
    );
  }
}