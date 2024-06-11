import 'package:flutter/material.dart';
import 'servico_api.dart';
import 'detalhes_evento.dart';
import 'tela_login.dart';

class TelaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eventos da Universidade'),
        actions: [
          IconButton(
            icon: Icon(Icons.login),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TelaLogin()),
              );
            },
          ),
        ],
      ),
      body: FutureBuilder(
        future: ServicoApi.buscarEventos(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Falha ao carregar eventos'));
          } else {
            var eventos = snapshot.data!;
            return ListView.builder(
              itemCount: eventos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(eventos[index].nome),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetalhesEvento(evento: eventos[index]),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
