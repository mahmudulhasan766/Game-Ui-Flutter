import 'package:flutter/material.dart';

class IBackground4 extends StatelessWidget {
  final double width;
  final List<Color> colorsGradient;
  final String heroTag;
  final double borderRadius;
  final Widget child;
  IBackground4(
      {this.width,
      this.colorsGradient,
      this.heroTag,
      this.borderRadius,
      this.child});

  @override
  Widget build(BuildContext context) {
    Widget _child = Container();
    if (child != null) _child = child;
    var _borderRadius = 0.0;
    if (borderRadius != null) _borderRadius = borderRadius;
    String _heroTag = UniqueKey().toString();
    if (heroTag != null) _heroTag = heroTag;

    var _width = 300.0;
    if (width != null) _width = width;

    var _colorsGradient = [
      Color.fromARGB(255, 33, 206, 186),
      Color.fromARGB(255, 172, 229, 184),
      Color.fromARGB(255, 172, 229, 184)
    ];
    if (colorsGradient != null) _colorsGradient = colorsGradient;

    return Hero(
        tag: _heroTag,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              decoration: BoxDecoration(
                gradient: new LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: _colorsGradient,
                ),
                borderRadius: new BorderRadius.circular(_borderRadius),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(3, 3),
                  ),
                ],
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                      // right bottom circle
                      width: _width * 0.8,
                      height: _width * 0.8,
                      bottom: -_width * 0.4,
                      right: -_width * 0.4,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0x20FFFFFF),
                          shape: BoxShape.circle,
                        ),
                      )),
                  Positioned(
                      // left bottom circle
                      width: _width * 0.3,
                      height: _width * 0.3,
                      bottom: _width * 0.5,
                      left: -_width * 0.1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0x0AFFFFFF),
                          shape: BoxShape.circle,
                        ),
                      )),
                  Positioned(
                    // left bottom circle
                    width: _width * 0.2,
                    height: _width * 0.2,
                    bottom: _width * 0.2,
                    left: _width * 0.1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0x10FFFFFF),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    width: _width * 0.8,
                    height: _width * 0.8,
                    top: -_width * 0.4,
                    left: -_width * 0.4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0x20FFFFFF),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    left: 10,
                    child: UnconstrainedBox(
                      child: Container(
                        height: 20,
                        width: 20,
                        child: Image.asset(
                          "assets/star.png",
                          fit: BoxFit.contain,
                          color: Colors.white.withAlpha(80),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: _width * 0.2,
                    child: UnconstrainedBox(
                      child: Container(
                        height: 20,
                        width: 20,
                        child: Image.asset(
                          "assets/star.png",
                          fit: BoxFit.contain,
                          color: Colors.white.withAlpha(80),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: _width * 0.7,
                    child: UnconstrainedBox(
                      child: Container(
                        height: 20,
                        width: 20,
                        child: Image.asset(
                          "assets/star.png",
                          fit: BoxFit.contain,
                          color: Colors.white.withAlpha(80),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: _width * .80,
                    child: UnconstrainedBox(
                      child: Container(
                        height: 40,
                        width: 40,
                        child: Image.asset(
                          "assets/star.png",
                          fit: BoxFit.contain,
                          color: Colors.white.withAlpha(80),
                        ),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: _child,
                      )),
                ],
              )),
        ));
  }
}
