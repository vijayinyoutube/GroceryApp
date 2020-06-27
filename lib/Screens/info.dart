import 'package:flutter/material.dart';

class InformationPage extends StatefulWidget {
  final String itemSelected;
  InformationPage({Key key, @required this.itemSelected}) : super(key: key);

  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    if (num.parse(widget.itemSelected) == 0) {
      return Scaffold(
        appBar: AppBar(
          title: Text(""),
        ),
      );
    }
    return CircularProgressIndicator();
  }
}
