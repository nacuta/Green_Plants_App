import 'package:flutter/material.dart';
import 'package:test_app_1/RpsCustomPainter.dart';
import 'package:test_app_1/main.dart';
import 'dart:math' as math;

import 'constants.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key key, this.paddingLeft}) : super(key: key);
  final double paddingLeft;
  @override
  _SecondPageState createState() => _SecondPageState();
}

var initialRightSection = 2;
var paddingLeft = 300.0;

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 80),
              child: Center(
                child: Container(
                  color: Colors.pink,
                  child: Text('Green Flowers'),
                ),
              ),
            ),
            Container(
              color: kDrawerColor,
              height: MediaQuery.of(context).size.height,
              width: 70,
              padding: EdgeInsets.only(top: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    width: 40,
                    height: 40,
                    margin: EdgeInsets.only(top: 12),
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Icon(Icons.grain, color: Colors.white),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 40,
                    height: 40,
                    margin: EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      // color: Colors.white,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Transform.rotate(
                angle: -math.pi / 2,
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      // color: Colors.red,
                      padding: EdgeInsets.only(top: 9),
                      child: Row(
                        children: <Widget>[
                          _buildMenu("Green Flowers", 0),
                          _buildMenu("Indoor Plants", 1),
                          _buildMenu("Outdoor trees", 2),
                        ],
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 250),
                      margin: EdgeInsets.only(left: paddingLeft),
                      // color: Colors.blue,
                      width: 150,
                      height: 39,
                      child: Stack(
                        children: <Widget>[
                          RotatedBox(
                            quarterTurns: 1,
                            child: Align(
                              alignment: Alignment.center,
                              child: CustomPaint(
                                size: Size(700,
                                    90), //You can Replace this with your desired WIDTH and HEIGHT
                                painter: RPSCustomPainter(),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Transform.rotate(
                              angle: math.pi / 2,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 35),
                                child: Icon(
                                  Icons.circle,
                                  size: 7,
                                  color: kDrawerColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenu(String menu, int position) {
    return GestureDetector(
      onTap: () {
        setState(() {
          paddingLeft = position * 150.0;
          initialRightSection = position;
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyHomePage()));
        });
      },
      child: Container(
        // color: Colors.red,
        width: 150,
        padding: EdgeInsets.fromLTRB(10, 16, 16, 0),
        child: Center(
          child: Text(menu,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
