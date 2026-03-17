import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  DateTime mydate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      children: [
        Text("Messages"),SizedBox(height: 30,),
        ElevatedButton(onPressed: ()async{
         DateTime? date1 = await showDatePicker(context: context, 
                        firstDate: DateTime(2000), lastDate: DateTime(2031),
                        initialDate: DateTime.now()
                        );
                      // print(date1);
                      if(date1 != null){
                        setState(() {mydate = date1;});
                      }
        }, child: Text("Choose Date"))
        ,SizedBox(height: 30,),
        Text(DateFormat("dd-MM-yyyy").format(mydate))  ,SizedBox(height: 30,),
        ElevatedButton(onPressed: ()async{
          TimeOfDay? time = await showTimePicker(context: context, initialTime: TimeOfDay.now());
          print(time?.format(context));
        }, child: Text("choose Time"))
      ],
    ));
  }
}