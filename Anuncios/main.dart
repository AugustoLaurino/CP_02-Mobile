import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> imagens = [
    'cell1.PNG',
    'cell2.PNG',
    'cell3.PNG',
    'cell4.PNG',
    'cell5.PNG',
  ];

  final List<String> textos = [
    'Samsung Galaxy S21 FE 5G (Exynos) 5G Dual SIM 256 GB verde 8 GB RAM \nR\$ 3070,00',
    'Samsung Galaxy S22 (Snapdragon) 5G Dual SIM 128 GB preto 8 GB RAM \nR\$ 2700,00',
    'Samsung Galaxy S23 Dual SIM 128 GB phantom black 8 GB RAM \nR\$ 4080,00',
    'Samsung Galaxy S23 Plus Dual SIM 512 GB preto 8 GB RAM \nR\$ 5025,00',
    'Samsung Galaxy S23+ 5g 256gb 8gb Ram Verde \nR\$ 7000,00',
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
      title: Text("Anúncios"),
      centerTitle: true,
      backgroundColor: Colors.blue,
    );
  }

  _corpo() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _carrosel(),
          ],
        ),
      ),
    );
  }

  _carrosel() {
    return Container(
      margin: EdgeInsets.only(bottom: 80),
      height: 500,
      child: PageView.builder(
        itemCount: imagens.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(height: 30), // Espaçamento entre a imagem e o AppBar
              _foto(imagens[index]),
              _texto(textos[index]),
            ],
          );
        },
      ),
    );
  }

  _foto(String nomeFoto) {
    return Image.asset(
      "assets/images/$nomeFoto",
      height: 260,
      width: 260,
      fit: BoxFit.contain,
    );
  }

  _texto(String texto) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 20),
        child: Text(
          texto,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
