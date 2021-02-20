import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Column 1
        Container(
          child: SideMenuNav(),
        ),

        // Column 2

        Expanded(
          child: MainWindow(),
        ),
      ],
    );
  }
}

class MainWindow extends StatelessWidget {
  const MainWindow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        // width: 500,
        child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.fromLTRB(0, 5, 10, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Green",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      "Plants",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 38,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Image.network(
                    "https://images-na.ssl-images-amazon.com/images/I/817oTE2gxTL._AC_SL1500_.jpg"),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Turf Pot Plant",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 8)),
                              Text(
                                "Big leaf in a turf pot for home or office decor",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black54),
                                // textAlign: TextAlign.start,
                              )
                            ],
                          )),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "\$45",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            width: 30.0,
                            height: 30.0,
                            child: new RawMaterialButton(
                              fillColor: Colors.white,
                              shape: new CircleBorder(),
                              elevation: 3.0,
                              child: Icon(
                                Icons.add,
                                size: 18,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Image.network(
                    "https://www.plantsguru.com/image/cache/catalog/Chlorophytum/pg-duranta-green-800x800.jpg"),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Garden Plant",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 8)),
                              Text(
                                "Big leaf in a turf pot for home or office decor",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black54),
                                // textAlign: TextAlign.start,
                              )
                            ],
                          )),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "\$25",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            width: 30.0,
                            height: 30.0,
                            child: new RawMaterialButton(
                              fillColor: Colors.white,
                              shape: new CircleBorder(),
                              elevation: 3.0,
                              child: Icon(
                                Icons.add,
                                size: 18,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SideMenuNav extends StatefulWidget {
  const SideMenuNav({
    Key key,
  }) : super(key: key);

  @override
  _SideMenuNavState createState() => _SideMenuNavState();
}

class _SideMenuNavState extends State<SideMenuNav>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 5));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  GlobalKey key = GlobalKey();

  double _topLocation = 269;
  bool startAnimation = false;

  _onTapDown(TapDownDetails details) {
    var x = details.globalPosition.dx;
    var y = details.globalPosition.dy;
    // or user the local position method to get the offset
    print(details.localPosition);
    print("tap down " + x.toString() + ", " + y.toString());
    setState(() {
      startAnimation = true;
      _topLocation = y - 20;
    });
    print(_topLocation);
  } //this is y - I think it's what you want

  @override
  Widget build(BuildContext context) {
    //add key to your widget, which position you need to find

    return SafeArea(
      child: Row(
        children: [
          Container(
            color: Color(0xff67864a),
            width: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                    heightFactor: 5,
                    alignment: Alignment.topCenter,
                    child: Icon(
                      Icons.ac_unit,
                      color: Colors.white,
                    )),
                Container(
                  height: 380,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            'Green Plants',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        onTapDown: (TapDownDetails details) =>
                            _onTapDown(details),
                      ),
                      GestureDetector(
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            'Indoor Plant',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        onTapDown: (TapDownDetails details) =>
                            _onTapDown(details),
                      ),
                      GestureDetector(
                        child: InkWell(
                          highlightColor: Colors.red,
                          splashColor: Colors.blueAccent,
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              'Shape Close',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        onTapDown: (TapDownDetails details) =>
                            _onTapDown(details),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.home,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Container(
            width: 30,
            child: Stack(
              overflow: Overflow.visible,
              children: [
                AnimatedPositioned(
                  key: key,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInCubic,
                  // final redPositionY = 262.8;
                  // final redPositionX = 392.7;
                  // final redPositiont = 501.7;
                  top: _topLocation,
                  left: -20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                color: Color(0xffC88A3D), width: 1.0)),
                        // color: Colors.blue,
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.add_circle,
                          color: Color(0xff67864a),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
