import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'login/login.dart';
import '../main.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person, color: Colors.amber),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
          ),
        ]
      ),
      body: HomeBody(),
    );
  }

  Color hexToColor(String hexCode) {
    return new Color(
        int.parse(hexCode.substring(1, 7), radix: 16) + 0xFF000000);
  }
  
}

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 40),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [ 
          Consumer<SignInModel>(
            builder: (context, userModel, child){
              String message = (userModel.user == ""? "Por favor, faça login.": "Olá, ${userModel.user}.");
              return Text(message);
            }
          )
        ],)
    );
  }
}

  





