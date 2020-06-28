import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Grape extends StatefulWidget {
  Grape({Key key}) : super(key: key);

  @override
  _GrapeState createState() => _GrapeState();
}

class _GrapeState extends State<Grape> {
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
              color: Colors.pink[200],
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.5),
                side: BorderSide(
                  color: Colors.pink[800],
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
                        "Grapes",
                        style: GoogleFonts.aBeeZee(
                            color: Colors.pink[800],
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
                          color: Colors.pink[800],
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.pink[800],
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.pink[800],
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.pink[800],
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.pink[800],
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
                          color: Colors.pink[800],
                        ),
                        child: Center(
                          child: Text(
                            "\$ 0.8/Kg",
                            style: GoogleFonts.aBeeZee(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.pink[800],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: -75,
            child: Image.asset(
              "Images/grape1.png",
              fit: BoxFit.contain,
              height: 175,
              width: 175,
            ),
          ),
        ],
      ),
    );
  }
}
