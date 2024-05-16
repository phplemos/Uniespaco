import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';

class UsuarioEntity {
  // Atributos comum a todos
  final String id;
  final String nome;
  final String email;
  final String telefone;
  final String photoUrl;

  // Atributos de seleção de tipo de usuario
  final String tipoUsuario;

  // Atributos de usuario Professor
  final UsuarioEntity? departamento;

  // Atributos de usuario setor
  final String? sigla;
  final bool? isDepartamento;

  // Atributod de usuario gestor
  final EspacoEntity? espacoGerido;

  final Map<DateTime, List<ReservaEntity>>? reservas;

  UsuarioEntity({required this.id, required this.nome, required this.email, required this.telefone, required this.photoUrl, required this.tipoUsuario, this.departamento, this.sigla, this.isDepartamento, this.espacoGerido, this.reservas});

  @override
  String toString() {
    return 'UsuarioEntity(id: $id, nome: $nome, email: $email, telefone: $telefone, photoUrl: $photoUrl, tipoUsuario: $tipoUsuario, departamento: $departamento, sigla: $sigla, isDepartamento: $isDepartamento, espacoGerido: $espacoGerido, reservas: ${reservas.toString()})';
  }

  @override
  bool operator ==(covariant UsuarioEntity other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.nome == nome &&
        other.email == email &&
        other.telefone == telefone &&
        other.photoUrl == photoUrl &&
        other.tipoUsuario == tipoUsuario &&
        other.departamento == departamento &&
        other.sigla == sigla &&
        other.isDepartamento == isDepartamento &&
        other.espacoGerido == espacoGerido &&
        other.reservas == reservas;
  }

  @override
  int get hashCode {
    return id.hashCode ^ nome.hashCode ^ email.hashCode ^ telefone.hashCode ^ photoUrl.hashCode ^ tipoUsuario.hashCode ^ departamento.hashCode ^ sigla.hashCode ^ isDepartamento.hashCode ^ espacoGerido.hashCode ^ reservas.hashCode;
  }
}
