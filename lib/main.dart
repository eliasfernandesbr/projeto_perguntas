import "package:flutter/material.dart";

main() {
  runApp(PerguntaApp());
}

@override
class PerguntaApp extends StatefulWidget {

  var perguntaSelecionada = 0;

  void responder(){
    perguntaSelecionada++;


  }

  Widget build(BuildContext context) {
    final perguntas = [
      "Qual é a sua cor favorita?",
      "Qual é o seu animal favorito?",

    ];


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Column(
          children: <Widget>[
           Text(perguntas.elementAt(0)),
            RaisedButton(
              child: Text("Resposta 1"),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text("Resposta 2"),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text("Resposta 3"),
              onPressed: responder,
            ),
          ],
        )
      ),
    );
  }
}
