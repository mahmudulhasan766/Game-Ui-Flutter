import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'contant.dart';

class MassHome extends StatefulWidget {
  @override
  _MassHomeState createState() => _MassHomeState();
}

class _MassHomeState extends State<MassHome> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: [Colors.blueAccent, Colors.lightBlue],
            begin: Alignment.bottomCenter,
            end: Alignment.center,
          ).createShader(bounds),
          blendMode: BlendMode.darken,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
              ),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.email,
                            color: Colors.white,
                            size: 30,
                          ),
                          Icon(
                            Icons.email,
                            color: Colors.white,
                            size: 30,
                          ),
                          Container(
                            width: 400,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueAccent),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "ChipsBD Reseller",
                                  style: kBodyText,
                                ),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.email,
                            color: Colors.white,
                            size: 30,
                          ),
                          Icon(
                            Icons.email,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text("cxvhbcvxbdsfddxf"),
                                Text("cxvhbcvxbdsfddxfgb"),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 12.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color:
                                            Colors.grey[600].withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color:
                                              Colors.grey[600].withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        width: 150,
                                        height: 150,
                                        child: Card(),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Column(
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: FlatButton(
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0),
                                  child: Text(
                                    "LogIn",
                                    style: kBodyText,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom:
                                    BorderSide(color: Colors.white, width: 1),
                              )),
                              child: Text(
                                'CreateNewAccount',
                                style: kBodyText,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
