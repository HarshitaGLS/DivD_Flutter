import 'package:flutter/material.dart';

class AnimationControllerScreen extends StatefulWidget {
  const AnimationControllerScreen({super.key});

  @override
  State<AnimationControllerScreen> createState() => _AnimationControllerScreenState();
}

class _AnimationControllerScreenState extends State<AnimationControllerScreen> with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState(){
    animationController = AnimationController(vsync: this , duration: Duration(seconds: 1));
    animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: RotationTransition(
          alignment: Alignment.center, turns: animationController,
          child: GestureDetector(
            // onTap:(){
            //   if(animationController.isAnimating){
            //       animationController.stop();
            //   }
            //   else { animationController.repeat();}
              
            // } ,
            onTapDown: (details){ animationController.stop();},
            onTapUp: (details){animationController.repeat();},
            child: Image.network("https://images.stockcake.com/public/3/a/5/3a544ba3-3bef-49b6-94ea-173d34731e33_large/illuminated-earth-globe-stockcake.jpg",
            width: 200,height: 200,),
          ),
        ),
      ),
    );
  }
}