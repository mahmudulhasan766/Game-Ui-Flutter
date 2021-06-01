import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
        duration: Duration(milliseconds: 5000), vsync: this);
    animation = Tween(begin: 222.0, end: 40.0).animate(controller);
    animation.addListener(() {
      setState(() {});
    });
    controller.forward();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teen Teen"),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        height: animation.value,
        width: animation.value,
        child: Center(
          child: FlutterLogo(
            size: 300,
          ),
        ),
      ),
    );
  }
}
