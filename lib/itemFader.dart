import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:test_app_1/RpsCustomPainter.dart';

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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  var paddingLeft = 0.0;
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 60),
              child: _buildRightSelection(),
            ),
            Container(
              color: Colors.green,
              height: MediaQuery.of(context).size.height,
              width: 70,
              padding: EdgeInsets.only(top: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 40,
                    height: 40,
                    margin: EdgeInsets.only(top: 12),
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Icon(Icons.ac_unit, color: Colors.white),
                  ),
                  Container(
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
                      width: 130,
                      height: 52,
                      child: Stack(
                        children: <Widget>[
                          RotatedBox(
                            quarterTurns: 1,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: CustomPaint(
                                size: Size(150,
                                    300), //You can Replace this with your desired WIDTH and HEIGHT
                                painter: RPSCustomPainter(),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Transform.rotate(
                              angle: math.pi / 2,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 16,
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
        });
      },
      child: Container(
        // color: Colors.red,
        width: 150,
        padding: EdgeInsets.fromLTRB(10, 16, 16, 0),
        child: Center(
          child: Text(menu,
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              )),
        ),
      ),
    );
  }

  Widget _buildRightSelection() {
    return Center(
      child: Container(),
    );
  }
}

// class AppClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = new Path();

//     path.moveTo(0, 0);
//     path.quadraticBezierTo(30, 0, 50, 20);
//     path.quadraticBezierTo(size.width / 2, 40, size.width - 50, 20);
//     path.quadraticBezierTo(size.width - 30, 0, size.width, 0);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => true;
// }

class AppClipper extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.87, size.height * 0.03);
    path_0.quadraticBezierTo(size.width * 0.87, size.height * 0.71,
        size.width * 0.87, size.height * 0.93);
    path_0.cubicTo(size.width * 0.73, size.height * 0.87, size.width * 0.57,
        size.height * 0.82, size.width * 0.33, size.height * 0.67);
    path_0.cubicTo(size.width * 0.21, size.height * 0.54, size.width * 0.24,
        size.height * 0.44, size.width * 0.33, size.height * 0.30);
    path_0.quadraticBezierTo(size.width * 0.49, size.height * 0.22,
        size.width * 0.87, size.height * 0.03);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
