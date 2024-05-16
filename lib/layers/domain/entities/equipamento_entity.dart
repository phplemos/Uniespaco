class EquipamentoEntity {
  final String id;
  final String nome;
  final String tipo;
  final String numTombo;
  EquipamentoEntity({
    required this.id,
    required this.nome,
    required this.tipo,
    required this.numTombo,
  });


  @override
  String toString() {
    return 'EquipamentoEntity(id: $id, nome: $nome, tipo: $tipo, numTombo: $numTombo)';
  }

  @override
  bool operator ==(covariant EquipamentoEntity other) {
    if (identical(this, other)) return true;

    return other.id == id && other.nome == nome && other.tipo == tipo && other.numTombo == numTombo;
  }

  @override
  int get hashCode {
    return id.hashCode ^ nome.hashCode ^ tipo.hashCode ^ numTombo.hashCode;
  }
}
