import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/Textfielddemo.dart';

class Mainwidget extends StatelessWidget {
  const Mainwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      /*  Text("Child1ehjehrjkwhjkrhkqwhrjkqhrjhqloremerkhjwhjrkhwjrhjwhrjwhrhwjrhwhrjwhrjkhwkrhwkhreklerkwhhwkhtkwhtkwhkthwkthwkthwkthwhtwkthwkhtkwhtkhwkthwrlkwrhwhwhrhwhkwhkht" ,
        maxLines: 1 ,
        overflow:TextOverflow.ellipsis),
        ElevatedButton(onPressed: (){}, child: Text("my button")),
        TextButton(onPressed: (){}, child: Text("my button")),
        OutlinedButton(onPressed: (){}, child: Text("my button")),
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzR0bIMZ71HVeR5zF4PihQaDvTQQk6bsVERw&s"),
        ),
        Text("My Home Page", style: TextStyle(
          shadows: [Shadow(color:Colors.black , blurRadius: 5 , offset: Offset(15, 10))]
        ),) */

      ElevatedButton(
        onPressed: (){} , 
        style:ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        backgroundColor: Colors.amberAccent,
        foregroundColor: Colors.brown,
        elevation: 10,
        side:BorderSide(color:Colors.red , width: 5, style:BorderStyle.solid ),
        fixedSize: Size(100, 50),
      ),
      child: Text("Buttonekrjwhrjkwhrjkwhjrkhwjrhwjhrwjhrjkwrjwhrjkwgjrgw")),
      ElevatedButton.icon(onPressed: (){}, 
                          label: Text("Home") , 
                          icon: Icon(Icons.home,color:Colors.amberAccent), //Icon(Icons.home,color:,size:)
                          style: ElevatedButton.styleFrom(
                            iconColor: Colors.deepOrangeAccent,
                            iconAlignment: IconAlignment.end,
                            iconSize: 10
                          ),),
                          IconButton(onPressed: (){}, icon: Icon(Icons.close)),
                          Textfielddemo()
      ],
    ); 
  }
}