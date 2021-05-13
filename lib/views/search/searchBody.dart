import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

GestureDetector card(heightCard, marginCard) {
  return GestureDetector(
    onTap: () {
      print("adicionar aos favoritos");
    },
    child: Container(
      margin: marginCard,
      height: heightCard,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 8,
            spreadRadius: 2,
            offset: Offset(2, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: IconButton(
              icon: Icon(
                FontAwesomeIcons.solidHeart,
                color: Colors.red,
              ),
              onPressed: () {
                print("favoritar");
              },
            ),
          )
        ],
      ),
    ),
  );
}
