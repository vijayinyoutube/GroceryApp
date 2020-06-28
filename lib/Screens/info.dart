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
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Orange(),
                  Grape(),
                  GreenApple(),
                  PineApple(),
                  BlueBerry(),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
