import 'package:flutter/material.dart';
import 'package:flutter_feb10/app_scaffold.dart';

class GridViewDemo extends StatefulWidget {
  const GridViewDemo({super.key});

  @override
  State<GridViewDemo> createState() => _GridViewDemoState();
}

class _GridViewDemoState extends State<GridViewDemo> {
  List<String> images = ["assets/images/a.jpg","assets/images/c.webp","assets/images/a.jpg","assets/images/d.jpg","assets/images/e.jpeg","assets/images/a.jpg","assets/images/d.jpg","assets/images/e.jpeg","assets/images/a.jpg"];
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      mychildren: GridView.builder(itemCount: images.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
         itemBuilder: (context, index) {
        return Image.asset(images[index],fit:BoxFit.cover);
      },)
    );

      ///////////////////
    // mychildren: 
  //  GridView(
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4
    // , crossAxisSpacing: 10, mainAxisSpacing: 10),

    // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200),
    // children: [
    //   Image.asset("assets/images/a.jpg",fit:BoxFit.cover),
    //   Image.asset("assets/images/c.webp",fit:BoxFit.cover),
    //   Image.asset("assets/images/a.jpg",fit:BoxFit.cover),
    //   Image.asset("assets/images/d.jpg",fit:BoxFit.cover),
    //   Image.asset("assets/images/e.jpeg",fit:BoxFit.cover),
    //   Image.asset("assets/images/a.jpg",fit:BoxFit.cover),
    //   Image.asset("assets/images/d.jpg",fit:BoxFit.cover),
    //   Image.asset("assets/images/e.jpeg",fit:BoxFit.cover),
    //   Image.asset("assets/images/a.jpg",fit:BoxFit.cover),
    // ],
    // )
    // );
  }
}