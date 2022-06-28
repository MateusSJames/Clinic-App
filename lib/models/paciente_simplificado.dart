class PacienteSimplificado {
  String? id;
  String? nome;
  String? cns;
  String? nascimento;

  PacienteSimplificado(
    {required this.id, 
    required this.nome,
    required this.cns,
    required this.nascimento, 
  });

  factory PacienteSimplificado.fromMap(Map<String, dynamic> map) => PacienteSimplificado
  (
    id: map['id'], 
    nome: map['nome'], 
    cns: map['cns'], 
    nascimento: map['nascimento']
  );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic> {
      'id': id,
      'nome': nome,
      'cns': cns,
      'nascimento': nascimento
    };

    return map;
  }
}