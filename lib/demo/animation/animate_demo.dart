import 'package:flutter/material.dart';
import 'dart:async';

class AnimationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimationDemo'),
        elevation: 0.0,
      ),
      body: AnimationDemoHome(),
    );
  }
}

class AnimationDemoHome extends StatefulWidget {
  @override
  _AnimationDemoHomeState createState() => _AnimationDemoHomeState();
}

class _AnimationDemoHomeState extends State<AnimationDemoHome> with TickerProviderStateMixin{
  AnimationController animationController;
  Animation animation;
  Animation animationColor;
  CurvedAnimation curvedAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      // value: 32.0,
      // lowerBound: 32.0,
      // upperBound: 100.0,
      duration: Duration(milliseconds: 3000),
      vsync: this
    );

    // animation = Tween(begin: 32.0, end: 100.0).animate(animationController);
    // animationColor = ColorTween(begin: Colors.red, end: Colors.blue).animate(animationController);
    curvedAnimation = CurvedAnimation(parent: animationController, curve: Curves.bounceInOut);
    animation = Tween(begin: 32.0, end: 100.0).animate(curvedAnimation);
    animationColor = ColorTween(begin: Colors.red, end: Colors.blue).animate(curvedAnimation);
    
    // animationController.addListener(() {
    //   // print('${animationController.value}');
    //   setState(() {});
    // });
    // animationController.forward();
    animationController.addStatusListener((AnimationStatus status) {
      print(status);
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedHeart(
        animations: [
          animation,
          animationColor
        ],
        controller: animationController,
      )
    );
  }
}


class AnimatedHeart extends AnimatedWidget {
  final List animations;
  final AnimationController controller;

  AnimatedHeart({
    this.animations,
    this.controller
  }): super(listenable: controller);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IconButton(
        icon: Icon(Icons.airplanemode_active),
        color: animations[1].value,
        // iconSize: animationController.value,
        iconSize: animations[0].value,
        onPressed: () {
          switch (controller.status) {
            case AnimationStatus.completed:
                controller.reverse();
              break;
            default:
                controller.forward();
          }
        },
      );
  }
}