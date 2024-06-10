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
  bool operator ==(other) {
    return (other is EquipamentoEntity) && other.id == id && other.nome == nome && other.tipo == tipo && other.numTombo == numTombo;
  }

  @override
  int get hashCode => id.hashCode ^ nome.hashCode ^ tipo.hashCode ^ numTombo.hashCode;
}
