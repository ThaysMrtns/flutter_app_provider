import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBody extends StatefulWidget {
  @override
  _SearchBodyState createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  EdgeInsets marginCard = EdgeInsets.only(bottom: 40, left: 30, right: 30);
  var iconColor;
  @override
  void initState() {
    iconColor = Colors.grey;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double heightCard = MediaQuery.of(context).size.height * .12;

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
                card(heightCard, marginCard),
                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container card(heightCard, marginCard) {
    return Container(
      margin: marginCard,
      height: heightCard,
      decoration: BoxDecoration(
        color: Colors.amber[200],
        //boxShadow: [
        //  BoxShadow(
        //    color: Colors.grey,
        //    blurRadius: 8,
        //    spreadRadius: 2,
        //    offset: Offset(2, 4),
        //  ),
        //],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                iconColor == Colors.grey
                    ? iconColor = Colors.red
                    : iconColor = Colors.grey;
              });
            },
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Icon(
                FontAwesomeIcons.bookmark,
                color: iconColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
