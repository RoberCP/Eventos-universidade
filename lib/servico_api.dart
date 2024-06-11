import 'package:http/http.dart' as http;
import 'dart:convert';
import 'evento.dart';

class ServicoApi {
  static const String urlApi = 'https://mockapi.io/projects/60b4d8c8b8dcb60017274b1a/events';

  static Future<List<Evento>> buscarEventos() async {
    final resposta = await http.get(Uri.parse(urlApi));

    if (resposta.statusCode == 200) {
      List respostaJson = json.decode(resposta.body);
      return respostaJson.map((evento) => Evento.fromJson(evento)).toList();
    } else {
      throw Exception('Falha ao carregar eventos');
    }
  }
}
