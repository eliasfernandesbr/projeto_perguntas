import 'package:flutter/material.dart';


class questao extends StatelessWidget {

  final String texto;
  questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Text(texto);
  }
}
