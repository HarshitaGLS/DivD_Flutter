import 'package:flutter/material.dart';
class TweenAnimation extends StatefulWidget {
  const TweenAnimation({super.key});

  @override
  State<TweenAnimation> createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation> {
  double endvalue = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:  TweenAnimationBuilder(
        duration: Duration(milliseconds: 800),
        tween: Tween<double>(begin: 100 , end: endvalue),
        builder: (context, value, child) {
            return Center(
            child: Image.network("https://www.shutterstock.com/image-vector/special-offer-discounts-50-percent-600nw-2417948727.jpg",
           height: value));
        },
        onEnd: () {
          setState(() {
            endvalue = endvalue==200 ? 100 : 200;
          });
        },
      )
    );
 
  }
}

