import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/main.dart'; // Import provider

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Explore",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        toolbarHeight: 60,
        centerTitle: true,
      ),
      body: LoginBody(),
    );
  }
}

class LoginBody extends StatefulWidget {
  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text("Nome de usuário"),
          SizedBox(height:10),
          userField(),
          SizedBox(height: 20),
          loginButton(),
        ]
      ),
    );
  }

  Container userField(){
    return Container(
      child: TextField(
      controller: userNameTextController,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
      ),
    ));
  }

  Container loginButton(){
    return Container(
      child: RaisedButton(
        onPressed: (){
          Provider.of<SignInModel>(context, listen: false).signIn(userNameTextController.text);
          Navigator.pop(context);
        },
        child: Text("Login")
      ),
    );
  }
}