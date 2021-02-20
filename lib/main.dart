import 'package:flutter/material.dart';
import 'package:test_app_1/RpsCustomPainter.dart';
import 'package:test_app_1/pageGreenFlowers.dart';
import 'package:test_app_1/pageIndoorPlants.dart';
import 'package:test_app_1/pageOutdoorThrees.dart';
import 'dart:math' as math;
import 'package:test_app_1/productDetailPage.dart';
import 'package:test_app_1/secondPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final kDrawerColor = Color(0xff67864a);
  final kSideColor = Color.fromARGB(255, 103, 134, 74);
  var initialRightSection = 2;
  var paddingLeft;
  List pages = [
    PageGreenFlowers(),
    PageIndoorPlants(),
    PageOuthdoorThrees(),
  ];
  @override
  initState() {
    super.initState();
    paddingLeft = 300.0;
    initialRightSection = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 80),
              child: pages[initialRightSection],
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
                      duration: Duration(milliseconds: 500),
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
