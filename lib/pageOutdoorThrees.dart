import 'package:flutter/material.dart';

class PageOuthdoorThrees extends StatefulWidget {
  const PageOuthdoorThrees({Key key}) : super(key: key);

  @override
  _PageOuthdoorThreesState createState() => _PageOuthdoorThreesState();
}

class _PageOuthdoorThreesState extends State<PageOuthdoorThrees> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(10),
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      margin: EdgeInsets.fromLTRB(0, 5, 10, 0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Outdoor",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  "Trees",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 38,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 300,
              child: Image.network(
                  "https://target.scene7.com/is/image/Target/GUEST_a46ca8d0-445f-4f83-8217-b924f5a116ee?wid=488&hei=488&fmt=pjpeg"),
            ),
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
                              "Robellini Palm Tree",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 8)),
                          Text(
                            "Big leaf in a turf pot for home or office decor",
                            style:
                                TextStyle(fontSize: 16, color: Colors.black54),
                            // textAlign: TextAlign.start,
                          )
                        ],
                      )),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "\$104.99",
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
                "https://m.media-amazon.com/images/I/61ZSRpkxQQL._AC_SL1000_.jpg"),
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
                              "Japanese Cherry Blossom Pink",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 8)),
                          Text(
                            "Cherry blossom tree complements many decor styles",
                            style:
                                TextStyle(fontSize: 16, color: Colors.black54),
                            // textAlign: TextAlign.start,
                          )
                        ],
                      )),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "\$25     ",
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
    );
  }
}
