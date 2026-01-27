import 'package:flutter/material.dart';

class Textfielddemo extends StatefulWidget {
  const Textfielddemo({super.key});

  @override
  State<Textfielddemo> createState() => _TextfielddemoState();
}

class _TextfielddemoState extends State<Textfielddemo> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: username,
          decoration: InputDecoration( 
            border: OutlineInputBorder(),
           hintText: "Enter username" , //placeholder
           helperText: "Username must be 8 char long",
            label: Text("Username"),
            prefix: Icon(Icons.person),
            suffix: IconButton(onPressed: (){username.clear();}, icon: Icon(Icons.close))
           ),
           
        ),
        SizedBox(height: 20,),
        TextField(
          controller: password,
          obscureText: true, obscuringCharacter: "#",
          decoration: InputDecoration( 
            border: OutlineInputBorder(),
           hintText: "Enter password" , //placeholder
            label: Text("password"),
            prefix: Icon(Icons.lock),
            suffix: IconButton(onPressed: (){username.clear();}, icon: Icon(Icons.close))
           ),
           
        ),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          print(username.text);
         }, child:Text("Fetch Value"))
      ],
    );
  }
}