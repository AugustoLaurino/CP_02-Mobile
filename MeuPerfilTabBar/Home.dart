import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: _titulo(),
          backgroundColor: Colors.white,
          body: _body(),
        ),
      ),
    );
  }

  _titulo() {
    return AppBar(
        title: Text("App Meu Perfil"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        bottom: TabBar(tabs: [
          Tab(
            text: 'Pessoal',
          ),
          Tab(
            text: 'Formação',
          ),
          Tab(
            text: 'Experiência',
          ),
        ]));
  }

  _body() {
    return TabBarView(
      children: [
        Center(
            child: Text(
          'Nome: Augusto Laurino \nIdade: 19 \nEstado Civil: Solteiro',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        )),
        Center(
            child: Text(
          'Formação: Cursando Sistemas \npara Internet - FIAP \n(2022 - 2023)',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        )),
        Center(
            child: Text(
          'Experiência: Desenvolvedor \nFull-stack',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        )),
      ],
    );
  }
}
