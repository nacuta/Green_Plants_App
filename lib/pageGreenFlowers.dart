import 'package:flutter/material.dart';
import 'package:test_app_1/productDetailPage.dart';

class PageGreenFlowers extends StatelessWidget {
  const PageGreenFlowers({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  "Pot",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  "Flowers",
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
                  "https://previews.123rf.com/images/saddako/saddako1210/saddako121000035/15649921-mums-flowers-in-a-flower-pot.jpg"),
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
                              "Mums Flowers In A Flower Pot",
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
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "\$45      ",
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
                "https://cdn.webshopapp.com/shops/30495/files/274960987/zantedeschia-calla-mixed-in-lofly-pot-5-flowers.jpg"),
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
                              "Zantedeschia Calla mixed",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 8)),
                          Text(
                            "The Calla is perfectly suited as a houseplant, but can also function well as a patio plant in summer",
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
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ProductDetailPage();
                            }));
                          },
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
