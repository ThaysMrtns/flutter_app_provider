import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'search/search.dart';

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
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: ListView(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return Search();
                      }),
                    );
                  },
                  child: Container(
                      margin: EdgeInsets.only(bottom: 20, right: 10),
                      padding: EdgeInsets.all(10),
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            spreadRadius: 2,
                            offset: Offset(2, 4),
                          ),
                        ],
                      ),
                      child: Text("Bar & Hotels")),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20, right: 10),
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          spreadRadius: 2,
                          offset: Offset(2, 4),
                        ),
                      ],
                    ),
                    child: Text("Cafés"),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 20, right: 10),
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          spreadRadius: 2,
                          offset: Offset(2, 4),
                        ),
                      ],
                    ),
                    child: Text("Fast Foods")),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(bottom: 20, left: 10),
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          spreadRadius: 2,
                          offset: Offset(2, 4),
                        ),
                      ],
                    ),
                    child: Text("Um bom almoço")),
                Container(
                    margin: EdgeInsets.only(bottom: 20, left: 10),
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          spreadRadius: 2,
                          offset: Offset(2, 4),
                        ),
                      ],
                    ),
                    child: Text("Procurar")),
                Container(
                    margin: EdgeInsets.only(bottom: 20, left: 10),
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          spreadRadius: 2,
                          offset: Offset(2, 4),
                        ),
                      ],
                    ),
                    child: Text("Comida vegana")),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color hexToColor(String hexCode) {
    return new Color(
        int.parse(hexCode.substring(1, 7), radix: 16) + 0xFF000000);
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ChangeNotifierProvider => Fornece uma instância do NotifierProvider para outros widgets
    return ChangeNotifierProvider( 
      create: (_){}, // Esse símbolo _ representa um BuildContext 
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}

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
