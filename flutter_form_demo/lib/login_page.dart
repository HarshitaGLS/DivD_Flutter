import 'package:flutter/material.dart';
import 'package:flutter_form_demo/app_scaffold.dart';
import 'package:flutter_form_demo/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.all(50),
          child: Column(
            spacing: 20,
            children: [
              FlutterLogo(size: 200),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Email"),
                  hintText: "Enter Email",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Email is required";
                  } else if (!RegExp(
                    r'^[\w-\.]+@[\w]+.[a-zA-Z]{2,3}$',
                  ).hasMatch(value)) {
                    return "Invalid Email";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                // obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Password"),
                  hintText: "Enter Password",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Password is required";
                  } else if (!RegExp(
                    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*[\d])(?=.*[@#$&*-+=.]).{8,20}$',
                  ).hasMatch(value)) {
                    return "1 uppercase, 1 lowercase 1 digit 1 special char min 8 and max 20 char";
                  } else {
                    return null;
                  }
                },
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          // print("form submitted");
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Logged In Successfully")));
                        }
                      },
                      child: Text("Login"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Cancel"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text("Create an Account??"),
                  SizedBox(width: 20),
                  // TextButton(onPressed: (){
                  //   Navigator.push(context, 
                  //   MaterialPageRoute(builder: (_)=>SignupPage()));
                  // }, child: Text("SignUp"))
                  
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, 
                    MaterialPageRoute(builder: (_)=>SignupPage()));
                    },child: Text("SignUp")
                  )
                  ,
                    InkWell(
                    onTap: (){
                      Navigator.push(context, 
                    MaterialPageRoute(builder: (_)=>SignupPage()));
                    },child: Text("SignUp")
                  )
                  ,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
