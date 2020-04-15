import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class questao extends StatelessWidget {
  final String texto;

  questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        texto,
        style: TextStyle(fontSize: 28),

      ),
    );
  }
}
