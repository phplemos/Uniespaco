class UsuarioEntity {
  // Atributos comum a todos
  final String id;
  final String nome;
  final String email;
  final String telefone;
  final String photoUrl;
  final List<String>? espacosFavoritados;

  // Atributos de seleção de tipo de usuario
  final String tipoUsuario;

  // Atributos de usuario Professor
  final String? departamentoId;

  // Atributos de usuario setor
  final String? sigla;
  final bool? isDepartamento;

  // Atributod de usuario gestor
  final String? espacoGeridoId;

  final Map<DateTime, List<String>>? reservas;

  UsuarioEntity({
    required this.id,
    required this.nome,
    required this.email,
    required this.telefone,
    required this.photoUrl,
    required this.espacosFavoritados,
    required this.tipoUsuario,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
    this.espacoGeridoId,
    this.reservas,
  });

  @override
  String toString() {
    return 'UsuarioEntity(id: $id, nome: $nome, email: $email, telefone: $telefone, photoUrl: $photoUrl, espacosFavoritados: $espacosFavoritados tipoUsuario: $tipoUsuario, departamento: $departamentoId, sigla: $sigla, isDepartamento: $isDepartamento, espacoGerido: $espacoGeridoId, reservas: ${reservas.toString()})';
  }

  @override
  bool operator ==(other) {
    return (other is UsuarioEntity) && other.id == id && other.nome == nome && other.email == email && other.telefone == telefone && other.photoUrl == photoUrl && other.espacosFavoritados == espacosFavoritados && other.tipoUsuario == tipoUsuario && other.departamentoId == departamentoId && other.sigla == sigla && other.isDepartamento == isDepartamento && other.espacoGeridoId == espacoGeridoId && other.reservas == reservas;
  }

  @override
  int get hashCode => id.hashCode ^ nome.hashCode ^ email.hashCode ^ telefone.hashCode ^ photoUrl.hashCode ^ espacosFavoritados.hashCode ^ tipoUsuario.hashCode ^ departamentoId.hashCode ^ sigla.hashCode ^ isDepartamento.hashCode ^ espacoGeridoId.hashCode ^ reservas.hashCode;
}
