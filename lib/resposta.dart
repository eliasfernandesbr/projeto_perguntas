import 'package:flutter/material.dart';

class resposta extends StatelessWidget {
  final String texto;

  resposta(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          textColor: Colors.white,
          color: Colors.deepOrange,
          child: Text(texto),
          onPressed: (){

          }

      ),
    );
  }
}
