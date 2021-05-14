import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'search/search.dart';
import 'login/login.dart';

// SignInModel => Classe responsável encapsular os dados do login 
class SignInModel with ChangeNotifier{
  // ChangeNotifier => Responsável por notificar mudanças no SignInModel e notificar aos seus ouvintes
  String _user = ''; // Nome do usuário
  String get user => _user; // get que recebe e um nome retorna um novo nome 

  void signIn(String userName){
    _user = userName;

    // NotifyListeners => notifica aos ouvintes que a classe sofreu alguma mudança
    notifyListeners();
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // ChangeNotifierProvider => Fornece uma instância do NotifierProvider para outros widgets
    return ChangeNotifierProvider(
      create: (_) => SignInModel(), // Esse símbolo _ representa um BuildContext
      child: Scaffold(
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
    ));
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
              String message = (userModel.user == ""? "Por favor, faça login.": "Olá, ${userModel.user}");
              return Text(message);
            }
          )
        ],)
    );
  }
}

  





