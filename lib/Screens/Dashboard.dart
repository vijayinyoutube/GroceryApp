import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:youtube/Declarations.dart/Images.dart';
import 'package:youtube/Declarations.dart/Offers.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //-------------------------- CHILD - 1 --------------------------
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              Icons.menu,
              size: 25,
              color: Colors.black,
            ),
            Container(
              height: 30,
              //height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width / 1.35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[350]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    " Search Items ",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  Icon(
                    Icons.search,
                    size: 25,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.shopping_basket,
              size: 25,
              color: Colors.deepOrangeAccent,
            ),
          ],
        ),
      ),
      //-------------------------- CHILD - 2 --------------------------
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Top Sellers",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Row(
                      children: <Widget>[
                        Text("See more"),
                        Icon(
                          Icons.navigate_next,
                          size: 25,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            //-------------------------- CHILD - 3 --------------------------
            CarouselSlider.builder(
              itemCount: horizontalCardImages.length,
              itemBuilder: (BuildContext context, int index) => Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width - 40,
                      child: Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Container(
                          child: Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.asset(
                                horizontalCardImages[index],
                                fit: BoxFit.fill,
                                width: double.infinity,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: Text(
                            offersvalue[index],
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: Text(
                            offers[index],
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: Text(
                            offercodes[index],
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: false,
                viewportFraction: 0.9,
                aspectRatio: 2,
                initialPage: 0,
              ),
            ),
            //-------------------------- CHILD - 4 --------------------------
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Most Popular",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[400]),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Others",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[400]),
                ),
              ],
            ),
            //-------------------------- CHILD - 5 --------------------------
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
