import 'package:flutter/material.dart';
import 'tela_principal.dart';

void main() {
  runApp(UniEventosApp());
}

class UniEventosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UniEventos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TelaPrincipal(),
    );
  }
}
