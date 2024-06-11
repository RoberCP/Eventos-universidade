import 'package:flutter/material.dart';
import 'evento.dart';

class DetalhesEvento extends StatelessWidget {
  final Evento evento;

  DetalhesEvento({required this.evento});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(evento.nome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              evento.nome,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(evento.descricao),
          ],
        ),
      ),
    );
  }
}
