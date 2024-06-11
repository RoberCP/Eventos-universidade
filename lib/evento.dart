class Evento {
  final String nome;
  final String descricao;

  Evento({required this.nome, required this.descricao});

  factory Evento.fromJson(Map<String, dynamic> json) {
    return Evento(
      nome: json['name'],
      descricao: json['description'],
    );
  }
}
