import 'package:flutter/material.dart';
import 'views/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<SignInModel>(create: (_) => SignInModel()),
      ],
      child: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter provider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

// Signin deve ficar no main ou no home?
class SignInModel extends ChangeNotifier {
  String _user = '';
  String get user => _user;

  void signIn(String userName) {
    _user = userName;
    notifyListeners();
  }
}
