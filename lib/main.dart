import 'package:flutter/material.dart';
import 'package:youtube/Screens/Carousel.dart';
import 'package:youtube/Screens/Dashboard.dart';
import 'package:youtube/Screens/info.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: CarouselPage(),
      routes: {
        "/DashboardPage": (_) => new DashboardPage(),
      },
    );
  }
}
