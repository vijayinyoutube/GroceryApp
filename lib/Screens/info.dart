import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_text/gradient_text.dart';
import 'package:youtube/Widgets/Grape.dart';
import 'package:youtube/Widgets/GreenApple.dart';
import 'package:youtube/Widgets/Orange.dart';
import 'package:youtube/Widgets/blueberry.dart';
import 'package:youtube/Widgets/pineapple.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

int selectedIndex = 0;

class _InfoPageState extends State<InfoPage> {
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
              color: Colors.deepOrangeAccent,
            ),
            Text(
              "🍎 Fresh Fruits & Vegetables",
              style: GoogleFonts.aBeeZee(
                  color: Colors.indigo,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.shopping_basket,
              size: 30,
              color: Colors.deepOrangeAccent,
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16.5,
            ),
            Container(
              width: double.infinity,
              height: 36.5,
              decoration: BoxDecoration(
                color: Colors.orange[100],
                borderRadius: BorderRadius.circular(5.5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " 🍊 Fruits",
                    style: GoogleFonts.aBeeZee(
                      color: Colors.orange[800],
                      fontSize: 25,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.filter_list,
                        color: Colors.orange[800],
                      ),
                      Text(
                        " Filter ",
                        style: GoogleFonts.aBeeZee(
                            color: Colors.orange[800], fontSize: 17.5),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Orange(),
                    Grape(),
                    GreenApple(),
                    PineApple(),
                    BlueBerry(),
                    Orange(),
                    Grape(),
                    GreenApple(),
                    PineApple(),
                    BlueBerry(),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 2.5,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.orange,
                            blurRadius: 25.0,
                            spreadRadius: 3.5,
                            offset: Offset(
                              15.0,
                              15.0,
                            ),
                          )
                        ],
                        gradient: LinearGradient(
                          colors: <Color>[Color(0xFF2508FF), Color(0xFFFF1000)],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.store,
                          size: 35,
                          color: Colors.redAccent,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Nearby Shops",
                          style: GoogleFonts.aBeeZee(
                              color: Colors.redAccent,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SingleChildScrollView(
                      child: Container(
                        height: 85,
                        child: Expanded(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              shop1(),
                              shop1(),
                              shop1(),
                              shop1(),
                              shop1(),
                              shop1(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favourites'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Category'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.orange,
        onTap: onItemTapped,
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}

Widget shop1() {
  return Container(
    width: 300,
    child: Card(
      color: Colors.green[50],
      elevation: 3.5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7.5),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 12.5,
          ),
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              color: Colors.pink[50],
              borderRadius: BorderRadius.circular(7.5),
            ),
          ),
          SizedBox(
            width: 12.5,
          ),
          Text("hai")
        ],
      ),
    ),
  );
}
