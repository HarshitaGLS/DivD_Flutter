import 'package:flutter/material.dart';
import 'package:flutter_form_demo/app_scaffold.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final formKey = GlobalKey<FormState>();
  String? gender;
  String? category;
  bool hobbyDance = false;
  bool hobbyTravelling = false;
  String ?city;
  List<String> cities = ["Pune","Kota","Mumbai","Surat","Kolkata"];

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Form(
          child: SingleChildScrollView(
            // scrollDirection: Axis.horizontal,
            child: Column(
              spacing: 20,
              children: [
                    Text("Register Here"),
                    Align(alignment: Alignment.centerLeft ,child: Text("Email")) ,
                  TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter Email",
                          ),
                        ),
                         Align(alignment: Alignment.centerLeft ,child: Text("Password")) ,
                        TextFormField(
                          // obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter Password",
                          ),
                        ),
                          Align(alignment: Alignment.centerLeft ,child: Text("Remark")) ,
                        TextFormField(
                          maxLines: 5,maxLength: 200,
                          decoration: InputDecoration(
                            border: OutlineInputBorder()
                          ),
                        ),
             Row(
                  children: [
                    RadioMenuButton(
                      value: "Male",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                      },
                      child: Text("Male"),
                    ),
                    RadioMenuButton(
                      value: "Female",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                      },
                      child: Text("Female"),
                    ),
                    RadioMenuButton(
                      value: "Other",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                      },
                      child: Text("Other"),
                    ),
                  ],
                ),
                RadioGroup(
                  groupValue: category,
                  onChanged: (value) {
                    setState(() {
                      category = value;
                    });
                  },
                  child: Column(
                    children: [
                      RadioListTile(value: "General", title: Text("General")),
                      RadioListTile(
                        value: "OBC",
                        title: Text("OBC"),
                        subtitle: Text("subtitle1"),
                      ),
                    ],
                  ),
                ),
            
                Row(
                  children: [
                    Checkbox(  value: hobbyDance,
                      onChanged: (value) { setState(() {hobbyDance = true;  }); },
                    ), 
                    Text("Dance"),
                    
                     CheckboxMenuButton( value: hobbyTravelling,
                      onChanged: (value) { setState(() {hobbyTravelling = true; }); },
                      child:  Text("Travelling"),
                    ),
                   
                  ],
                ), 
            
              DropdownButtonFormField(
                hint:Text("Choose City"),
                decoration: InputDecoration(border: OutlineInputBorder()),
                items: [
                DropdownMenuItem( value:"Pune",child: Text("Pune")),
                DropdownMenuItem(value:"Ahmedabad",child: Text("Ahmedabad")),
                DropdownMenuItem(value:"Jaipur",child: Text("Jaipur")),
                DropdownMenuItem(value:"Mumbai",child: Text("Mumbai")),
                DropdownMenuItem(value:"Surat",child: Text("Surat")),
              ], 
              onChanged:(value){setState(() {
                city=value.toString();
              });}),
            
                DropdownButtonFormField(
                hint:Text("Choose City"),
                decoration: InputDecoration(border: OutlineInputBorder()),
                items: cities.map((c){
                  return DropdownMenuItem(value:c, child: Text(c));
                }).toList(), 
              onChanged:(value){setState(() {
                city=value;
              });})
            
            
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
