import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:youtube/Declarations/Images.dart';

class CarouselPage extends StatefulWidget {
  @override
  _CarouselPageState createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CarouselSlider.builder(
              itemCount: carouselimages.length,
              itemBuilder: (BuildContext context, int itemIndex) => Container(
                child: Image.asset(
                  carouselimages[itemIndex],
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
              ),
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                aspectRatio: 1.0,
                initialPage: 0,
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                      colors: [
                        Colors.lightBlueAccent,
                        Color(0xFF2508FF),
                        Colors.lightBlueAccent,
                      ],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                    ),
                  ),
                  height: 50,
                  width: MediaQuery.of(context).size.width - 20,
                  child: RaisedButton(
                    elevation: 0,
                    color: Colors.transparent,
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          (context), "/DashboardPage");
                    },
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Dont't have an account ?",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      " SignUp ",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
