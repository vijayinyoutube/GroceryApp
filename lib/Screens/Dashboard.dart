import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:youtube/Declarations/Colors/borderColors.dart';
import 'package:youtube/Declarations/Colors/cardColors.dart';
import 'package:youtube/Declarations/Images.dart';
import 'package:youtube/Declarations/Offers.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu,
              size: 25,
              color: Colors.black,
            ),
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width / 1.35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[350],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " Search Item ",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  Icon(
                    Icons.search,
                    size: 25,
                  )
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Sellers",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Text("See more"),
                            Icon(
                              Icons.navigate_next,
                              size: 25,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              CarouselSlider.builder(
                itemCount: horizontalCardImages.length,
                itemBuilder: (BuildContext context, int index) => Container(
                  child: Stack(
                    children: [
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
                        children: [
                          SizedBox(
                            height: 3,
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
                                fontWeight: FontWeight.bold,
                              ),
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
                                fontWeight: FontWeight.bold,
                              ),
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
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
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
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Most Popular",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[400],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Others",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: horizontalCardImages.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Container(
                              width:
                                  (MediaQuery.of(context).size.width - 25) / 2,
                              height: 100,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7.5),
                                  side: BorderSide(
                                    color: bordercolorsleft[index],
                                    width: 2,
                                  ),
                                ),
                                color: cardcolorsleft[index],
                                elevation: 5,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Flexible(
                                          child: Text(
                                            itemnameleft[index],
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Icon(
                                          Icons.navigate_next,
                                          size: 27,
                                          color: bordercolorsleft[index],
                                        ),
                                      ],
                                    ),
                                    Flexible(
                                      child: Image.asset(
                                        verticalCardImagesleft[index],
                                        fit: BoxFit.cover,
                                        width: ((MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    25) /
                                                2) -
                                            25,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width:
                                  (MediaQuery.of(context).size.width - 25) / 2,
                              height: 100,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7.5),
                                  side: BorderSide(
                                    color: bordercolorsright[index],
                                    width: 2,
                                  ),
                                ),
                                color: cardcolorsright[index],
                                elevation: 5,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Flexible(
                                          child: Text(
                                            itemnameright[index],
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Icon(
                                          Icons.navigate_next,
                                          size: 27,
                                          color: bordercolorsright[index],
                                        ),
                                      ],
                                    ),
                                    Flexible(
                                      child: Image.asset(
                                        verticalCardImagesright[index],
                                        fit: BoxFit.cover,
                                        width: ((MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    25) /
                                                2) -
                                            25,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
