import 'package:flutter/material.dart';
import 'searchBody.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: hexToColor("#FFFFFF"),
        title: Text(
          "Explore",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        toolbarHeight: 60,
        centerTitle: true,
      ),
      body: SearchBody(),
    );
  }

  Color hexToColor(String hexCode) {
    return new Color(
        int.parse(hexCode.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
