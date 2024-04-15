// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:uniespaco/layers/data/dto/usuario_dto.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';

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

  UsuarioEntity({
    required this.id,
    required this.nome,
    required this.email,
    required this.telefone,
    required this.photoUrl,
    required this.tipoUsuario,
    this.departamento,
    this.sigla,
    this.isDepartamento,
    this.espacoGerido,
  });

  UsuarioDto toDto() {
    return UsuarioDto(
      id: id,
      nome: nome,
      email: email,
      telefone: telefone,
      photoUrl: photoUrl,
      tipoUsuario: tipoUsuario,
      departamento: departamento?.toDto(),
      sigla: sigla,
      isDepartamento: isDepartamento,
      espacoGerido: espacoGerido?.toDto(),
    );
  }

  factory UsuarioEntity.fromDto(UsuarioDto usuarioDto) {
    return UsuarioEntity(
      id: usuarioDto.id,
      nome: usuarioDto.nome,
      email: usuarioDto.email,
      telefone: usuarioDto.telefone,
      photoUrl: usuarioDto.photoUrl,
      tipoUsuario: usuarioDto.tipoUsuario,
      departamento: usuarioDto.departamento != null ? UsuarioEntity.fromDto(usuarioDto.departamento!) : null,
      sigla: usuarioDto.sigla,
      isDepartamento: usuarioDto.isDepartamento,
      espacoGerido: usuarioDto.espacoGerido != null ? EspacoEntity.fromDto(usuarioDto.espacoGerido!) : null,
    );
  }
}
