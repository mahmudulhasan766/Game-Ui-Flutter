import 'package:flutter/material.dart';
import 'package:mass_data/home.dart';
import 'package:mass_data/home_page.dart';
import 'package:mass_data/login.dart';
import 'package:mass_data/mass_home.dart';
import 'package:mass_data/route.dart';
import 'package:mass_data/splash_screen/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MassHome(),
      routes: <String, WidgetBuilder>{
        MASS_HOME: (BuildContext context) => MassHome(),
        SPLASS_SCREEN: (BuildContext context) => SplashScreen(),
        LOGIN_: (BuildContext context) => Login(),
      },
      initialRoute: SPLASS_SCREEN,
    );
  }
}
