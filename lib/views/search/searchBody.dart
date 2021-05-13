import 'package:flutter/material.dart';

class SearchBody extends StatefulWidget {
  @override
  _SearchBodyState createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  @override
  Widget build(BuildContext context) {
    double heightCard = MediaQuery.of(context).size.height * .2;
    EdgeInsets marginCard = EdgeInsets.only(bottom: 40, left: 30, right: 30);

    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: ListView(
              children: [
                SizedBox(height: 40),
                card(heightCard, marginCard),
                card(heightCard, marginCard),
                card(heightCard, marginCard),
                card(heightCard, marginCard),
                card(heightCard, marginCard),
                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Container card(heightCard, marginCard) {
  return Container(
    margin: marginCard,
    height: heightCard,
    decoration: BoxDecoration(
      color: Colors.lightBlue[300],
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 8,
          spreadRadius: 2,
          offset: Offset(2, 4),
        ),
      ],
    ),
  );
}
