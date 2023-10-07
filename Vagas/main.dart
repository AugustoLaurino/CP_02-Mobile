import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Vaga {
  final String nome;
  final double salario;
  final String descricao;
  final String contato;

  Vaga(this.nome, this.salario, this.descricao, this.contato);
}

class MyApp extends StatelessWidget {
  final List<Vaga> vagas = [
    Vaga(
        "Desenvolvedor Flutter",
        5000,
        "Buscamos um desenvolvedor flutter para fazer parte da nossa equipe de T.I., a fim de criar novas soluções e integrar as já existentes.",
        "contato@gmail.com"),
    Vaga(
        "Designer UI/UX",
        4000,
        "Buscamos um designer UI/UX para fazer parte da nossa equipe, a fim de criar novas soluções e integrar as já existentes.",
        "contato@gmail.com"),
    Vaga(
        "Front-end",
        6000,
        "Buscamos um desenvolvedor front-end para fazer parte da nossa equipe de T.I., a fim de criar novas soluções e integrar as já existentes.",
        "contato@gmail.com"),
    Vaga(
        "Analista de Dados",
        5500,
        "Buscamos um analista de dados para fazer parte da nossa equipe de T.I., a fim de criar novas soluções e integrar as já existentes.",
        "contato@gmail.com"),
    Vaga(
        "Engenheiro de Software",
        5200,
        "Buscamos um engenheiro de software para fazer parte da nossa equipe de T.I., a fim de criar novas soluções e integrar as já existentes.",
        "contato@gmail.com"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.white,
        body: _corpo(),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Vagas"),
      centerTitle: true,
      backgroundColor: Colors.blue,
    );
  }

  _corpo() {
    return Container(
      child: ListView.builder(
        itemCount: vagas.length,
        itemBuilder: (context, index) {
          return _vagaCard(vagas[index]);
        },
      ),
    );
  }

  _vagaCard(Vaga vaga) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              vaga.nome,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Salário: \$${vaga.salario.toStringAsFixed(2)}",
              style: TextStyle(
                fontSize: 16, // Aumentar o tamanho da fonte
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Descrição: ${vaga.descricao}",
              style: TextStyle(
                fontSize: 16, // Aumentar o tamanho da fonte
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Contato: ${vaga.contato}",
              style: TextStyle(
                fontSize: 16, // Aumentar o tamanho da fonte
              ),
            ),
          ],
        ),
      ),
    );
  }
}
