import 'package:flutter/material.dart';

class resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          textColor: Colors.white,
          color: Colors.deepOrange,
          child: Text(texto),
          onPressed: quandoSelecionado,

      ),
    );
  }
}
