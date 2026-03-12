import 'package:flutter/material.dart';
import 'package:mar12/screens/contact_screen.dart';
import 'package:mar12/screens/home_screen.dart';
import 'package:mar12/screens/profile_screen.dart';
import 'package:mar12/screens/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=>StartScreen(),
        "/home":(context)=>HomeScreen(),
        // "/profile":(context)=>ProfileScreen(),
        // "/contact":(context)=>ContactScreen()
      },
      onGenerateRoute: (settings) {
        switch(settings.name){
          case "/profile":{
            String myarg = settings.arguments as String;
             return  MaterialPageRoute(builder: (builder)=>ProfileScreen(name: myarg));
        }
        case "/contact":{
            Map<String, dynamic> myarg = settings.arguments as Map<String,dynamic>;
             return  MaterialPageRoute(builder: (builder)=>ContactScreen(collegename: myarg["collegename"] , address:myarg["address"]));
        }
      }
      },
      onUnknownRoute: (settings) => MaterialPageRoute(builder: (builder)=>Center(child: Text("404 page Not Found"),)),
      //  home: StartScreen()
    );
  }
}
