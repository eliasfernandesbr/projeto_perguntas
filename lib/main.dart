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
      {
        'texto': 'Qual é a cor favorita?',
        'respostas': ['Preto', 'Cinza', 'Verde', 'Laranja'],
      },
      {
        'texto': 'Qual é seu animal favorito?',
        'respostas': ['Cachorro', 'Gato', 'Cavalo', 'Burro'],
      },
      {
        'texto': 'Qual é seu instrutor favorito?',
        'respostas': ['Guanabara', 'Balta', 'Jacob', 'Elias'],
      },
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
            questao(perguntas[_perguntaSelecionada]['texto']),
            resposta("Resposta 1", _responder),
            resposta("Resposta 2", _responder),
            resposta("Resposta 3", _responder),
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
