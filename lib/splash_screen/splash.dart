import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mass_data/mass_home.dart';
import 'package:mass_data/route.dart';

import 'ibackground3.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
        duration: Duration(milliseconds: 5000), vsync: this);
    animation = Tween(begin: 40.0, end: 150.0).animate(controller);
    animation.addListener(() {
      setState(() {});
    });
    controller.forward();
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  var windowWidth;
  var windowHeight;

  startTime() async {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.of(context)
          .pushNamedAndRemoveUntil(MASS_HOME, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    windowWidth = MediaQuery.of(context).size.width;
    windowHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: initScreen(context),
    );
  }

  initScreen(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          color: Colors.blue,
        ),
        IBackground4(
          width: windowWidth,
          colorsGradient: [Colors.blueAccent, Colors.lightBlue],
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: "SplashLogo",
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                      image: AssetImage('images/massdata.png'),
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(Colors.white54, BlendMode.darken),
                    ),
                  ),
                  height: animation.value,
                  width: animation.value,
                  child: null,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20.0)),
              CircularProgressIndicator(
                backgroundColor: Colors.greenAccent,
                strokeWidth: 1,
              )
            ],
          ),
        ),
      ],
    ));
  }
}
