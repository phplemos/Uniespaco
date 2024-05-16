class LocalizacaoEntity {
  final String campus;

  final String pavilhao;

  final int andar;

  final int numero;
  LocalizacaoEntity({
    required this.campus,
    required this.pavilhao,
    required this.andar,
    required this.numero,
  });

  @override
  String toString() {
    return 'LocalizacaoEntity(campus: $campus, pavilhao: $pavilhao, andar: $andar, numero: $numero)';
  }

  @override
  bool operator ==(covariant LocalizacaoEntity other) {
    if (identical(this, other)) return true;

    return other.campus == campus && other.pavilhao == pavilhao && other.andar == andar && other.numero == numero;
  }

  @override
  int get hashCode {
    return campus.hashCode ^ pavilhao.hashCode ^ andar.hashCode ^ numero.hashCode;
  }
}
