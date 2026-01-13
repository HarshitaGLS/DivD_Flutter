import 'package:flutter/material.dart';

class Imagewidget extends StatelessWidget {
  const Imagewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Image Display Demo"),
        // Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTixMUT-tvYkn-4K0khhYC3lKHV_mRmBGpc0g&s",width: 100,),
        // Image.asset("assets/images/a.png",width: 100),
        // Image(
        //   image:AssetImage("assets/images/b.png"),
        //   width: 200, fit: BoxFit.cover,
        // ),
        //  CircleAvatar(backgroundImage:AssetImage("assets/images/a.png")),
         CircleAvatar(backgroundImage:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTixMUT-tvYkn-4K0khhYC3lKHV_mRmBGpc0g&s"))

      ],
    );
  }
}