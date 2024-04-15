// ignore_for_file: public_member_api_docs, sort_constructors_first
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
}
