import 'package:flutter/material.dart';
import 'package:mar17/message_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mar17 Widgets Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo ,
        brightness:isDark ? Brightness.dark :Brightness.light),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style:ElevatedButton.styleFrom(
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(2))
          )
        ),
        textTheme: TextTheme(
          titleMedium: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          )
        ),
        cardTheme: CardThemeData()
      ),
       home: TabDemoScreen(isDark:isDark , onChanged: (val){setState(() {
              isDark = val;
            });})
    );
  }
}


class TabDemoScreen extends StatefulWidget {
  final bool isDark;
  final Function(bool) onChanged;
  const TabDemoScreen({super.key,required this.isDark, required this.onChanged});

  @override
  State<TabDemoScreen> createState() => _TabDemoScreenState();
}

class _TabDemoScreenState extends State<TabDemoScreen> {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title:Text("Home"),
          actions: [
            Switch(value: widget.isDark, onChanged:widget.onChanged ),
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