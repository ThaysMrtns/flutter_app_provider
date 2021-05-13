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
    EdgeInsets marginCard = EdgeInsets.only(bottom: 40);

    Container card() {
      return Container(
        margin: marginCard,
        color: Colors.blueGrey,
        width: widthCard,
        height: heightCard,
      );
    }

    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 40),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: ListView(
              children: [
                card(),
                card(),
                card(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
