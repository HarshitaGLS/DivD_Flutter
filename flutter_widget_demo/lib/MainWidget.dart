import 'package:flutter/material.dart';

class Mainwidget extends StatelessWidget {
  const Mainwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Child1ehjehrjkwhjkrhkqwhrjkqhrjhqloremerkhjwhjrkhwjrhjwhrjwhrhwjrhwhrjwhrjkhwkrhwkhreklerkwhhwkhtkwhtkwhkthwkthwkthwkthwhtwkthwkhtkwhtkhwkthwrlkwrhwhwhrhwhkwhkht" ,
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
        ),)
      ],
    );
  }
}