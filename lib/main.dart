import "package:flutter/material.dart";
import './questao.dart';
import './resposta.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }
  @override
  Widget build(BuildContext context) {
    final perguntas = [
      "Qual é a sua cor favorita?",
      "Qual é o seu animal favorito?",
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black54,
            title: Text("Perguntas"),
          ),
          body: Column(
            children: <Widget>[
              questao(perguntas[_perguntaSelecionada]),
              resposta("Resposta 1"),
              resposta("Resposta 2"),
              resposta("Resposta 3"),

            ],
          ),
      ),
    );
  }
}


class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
