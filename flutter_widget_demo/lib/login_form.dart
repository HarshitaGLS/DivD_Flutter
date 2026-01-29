import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController email =  TextEditingController();
  TextEditingController password =  TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(20),
      child: Form(
        key:formKey,
        child: Column(
          children: [Text("Login Form"),SizedBox(height: 20,),
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Enter Email")
              ),
              validator: (value) {
                final pattern = RegExp(r'^[\w-\.]+@[\w-]+.[a-zA-Z]{2,3}$');
                if(value==null ||value.isEmpty){ 
                  return "Please Enter Email";}
                else if(!pattern.hasMatch(value)){
                  return "Invalid Email";
                }
                else { return null; }
              },
            ),
            SizedBox(height: 20,),
             TextFormField(
              controller: password,obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Enter Password")
              ),
              validator: (value){
                if(value==null || value.isEmpty){
                  return "Password is required";
                }
                else if(value.length < 8 || value.length >20){
                  return "Password min 8 char and max 20 char";
                }
                else {return null;}},
            ),
             SizedBox(height: 20,),
             Row(
              children: [
            ElevatedButton(onPressed: (){
              if(formKey.currentState!.validate()){}
            }, child: Text("Login")),
            ElevatedButton(onPressed: (){
            }, child: Text("Cancel")),

              ],
             )
        
          ],
        ),
      ),
    );
  }
}