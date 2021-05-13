import 'package:flutter/material.dart';

class SearchBody extends StatefulWidget {
  @override
  _SearchBodyState createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  @override
  Widget build(BuildContext context) {
    double widthCard = MediaQuery.of(context).size.width * .2;
    double heightCard = MediaQuery.of(context).size.height * .2;
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 40),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 40),
                  color: Colors.blueGrey,
                  width: widthCard,
                  height: heightCard,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 40),
                  color: Colors.blue,
                  width: widthCard,
                  height: heightCard,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 40),
                  color: Colors.blueGrey,
                  width: widthCard,
                  height: heightCard,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
