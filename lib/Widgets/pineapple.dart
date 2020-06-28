import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PineApple extends StatefulWidget {
  PineApple({Key key}) : super(key: key);

  @override
  _PineAppleState createState() => _PineAppleState();
}

class _PineAppleState extends State<PineApple> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 75),
      child: Stack(
        alignment: Alignment.topCenter,
        overflow: Overflow.visible,
        children: [
          Container(
            width: 200,
            height: 200,
            child: Card(
              color: Colors.yellow[200],
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.5),
                side: BorderSide(
                  color: Colors.yellow[800],
                  width: 3.5,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 75,
                    ),
                    Container(
                      child: Text(
                        "Pine Apple",
                        style: GoogleFonts.aBeeZee(
                            color: Colors.yellow[800],
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 2.5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.yellow[800],
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.yellow[800],
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.yellow[800],
                        ),
                        Icon(
                          Icons.star_border,
                          size: 15,
                          color: Colors.yellow[800],
                        ),
                        Icon(
                          Icons.star_border,
                          size: 15,
                          color: Colors.yellow[800],
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 75,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.yellow[800],
                        ),
                        child: Center(
                          child: Text(
                            "\$ 0.5/Kg",
                            style: GoogleFonts.aBeeZee(
                                color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.yellow[800],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: -75,
            child: Image.asset(
              "Images/pineapple.png",
              fit: BoxFit.contain,
              height: 175,
              width: 200,
            ),
          ),
        ],
      ),
    );
  }
}
