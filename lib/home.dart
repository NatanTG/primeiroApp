
// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
class Home extends StatefulWidget{
  

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{

  late List<Color> opcoesCorBarra;
  late List<Color> opcoesCorTexto;
  late List<Color> opcoesCorFundo;
  late List<String> cores;
  late int opcaoAtual;

  @override
  void initState() {
    super.initState();
    opcoesCorBarra = [
      Color.fromARGB(255, 5, 51, 8),
      Color.fromARGB(255, 95, 0, 0),
      Color.fromARGB(255, 0, 36, 90),
      Color.fromARGB(255, 112, 39, 0),
      Color.fromARGB(255, 39, 1, 87),
    ];

    opcoesCorTexto = [
      Color.fromARGB(255, 0, 158, 8),
      Color.fromARGB(255, 179, 16, 16),
      Color.fromARGB(255, 3, 87, 184),
      Color.fromARGB(255, 173, 79, 2),
      Color.fromARGB(255, 114, 4, 182),
    ];

    opcoesCorFundo = [
      Color.fromARGB(255, 157, 240, 164),
      Color.fromARGB(255, 233, 157, 169),
      Color.fromARGB(255, 146, 196, 231),
      Color.fromARGB(255, 238, 205, 153),
      Color.fromARGB(255, 226, 157, 236),
    ];

    cores = [
      'Verde',
      'Vermelho',
      'Azul',
      'Laranja',
      'Roxo',
    ];

    opcaoAtual = 0;
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
        backgroundColor: opcoesCorFundo[opcaoAtual],
        appBar: AppBar(
          title: Text(
                'Cores',
                style: TextStyle(
                  color: Colors.black,
            ),
          ),
          backgroundColor: opcoesCorBarra[opcaoAtual],
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [ 
              Text(
                cores[opcaoAtual], 
                style: TextStyle(
                fontSize: 50,
                color: opcoesCorTexto[opcaoAtual],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    opcaoAtual = opcaoAtual < opcoesCorBarra.length -1? ++opcaoAtual : 0;
                  }
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
                child: Text(
                  'Trocar cor',
                  style: TextStyle(
                  fontSize: 20,
                  color: opcoesCorTexto[opcaoAtual],
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}