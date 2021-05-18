import 'package:flutter/material.dart';
import 'views/home.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  // Inicializar o firebase
  WidgetsFlutterBinding.ensureInitialized();

  Firebase.initializeApp().whenComplete(() {
    print("completed");
  });
  //FirebaseFirestore.instance
  //    .collection("usuarios")
  //    .doc("pontuação")
  //    .set({"Ana": "250", "João": "100"});

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
