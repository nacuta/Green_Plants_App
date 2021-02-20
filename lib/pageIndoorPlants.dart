import 'package:flutter/material.dart';
import 'package:test_app_1/productDetailPage.dart';

class PageIndoorPlants extends StatelessWidget {
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
                  "Indoor",
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
            SizedBox(
              height: 300,
              child: Image.network(
                  "https://cdn.shopify.com/s/files/1/0014/2203/2941/products/ImageServer_e559e411-44e1-480f-a329-5a6752a3924e_2000x.jpg?v=1613177840"),
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
                              "Bonsai 'Ginseng'",
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
                          "\$125    ",
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
