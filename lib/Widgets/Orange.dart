import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Orange extends StatefulWidget {
  Orange({Key key}) : super(key: key);

  @override
  _OrangeState createState() => _OrangeState();
}

class _OrangeState extends State<Orange> {
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
              color: Colors.orange[200],
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.5),
                side: BorderSide(
                  color: Colors.deepOrangeAccent,
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
                        "Orange",
                        style: GoogleFonts.aBeeZee(
                            color: Colors.orange[800],
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
                          color: Colors.orange[800],
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.orange[800],
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.orange[800],
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.orange[800],
                        ),
                        Icon(
                          Icons.star_border,
                          size: 15,
                          color: Colors.orange[800],
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
                          color: Colors.orange[800],
                        ),
                        child: Center(
                          child: Text(
                            "\$ 1.5/Kg",
                            style: GoogleFonts.aBeeZee(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: -75,
            child: Image.asset(
              "Images/orange.png",
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
