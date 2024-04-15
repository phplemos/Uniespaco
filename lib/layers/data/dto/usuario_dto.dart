// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:uniespaco/layers/data/dto/espaco_dto.dart';

class UsuarioDto {
  // Atributos comum a todos
  final String id;
  final String nome;
  final String email;
  final String telefone;
  final String photoUrl;

  // Atributos de seleção de tipo de usuario
  final String tipoUsuario;

  // Atributos de usuario Professor
  final UsuarioDto? departamento;

  // Atributos de usuario setor
  final String? sigla;
  final bool? isDepartamento;

  // Atributod de usuario gestor
  final EspacoDto? espacoGerido;
  UsuarioDto({
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

  UsuarioDto copyWith({
    String? id,
    String? nome,
    String? email,
    String? telefone,
    String? photoUrl,
    String? tipoUsuario,
    UsuarioDto? departamento,
    String? sigla,
    bool? isDepartamento,
    EspacoDto? espacoGerido,
  }) {
    return UsuarioDto(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      email: email ?? this.email,
      telefone: telefone ?? this.telefone,
      photoUrl: photoUrl ?? this.photoUrl,
      tipoUsuario: tipoUsuario ?? this.tipoUsuario,
      departamento: departamento ?? this.departamento,
      sigla: sigla ?? this.sigla,
      isDepartamento: isDepartamento ?? this.isDepartamento,
      espacoGerido: espacoGerido ?? this.espacoGerido,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'email': email,
      'telefone': telefone,
      'photoUrl': photoUrl,
      'tipoUsuario': tipoUsuario,
      'departamento': departamento?.toMap(),
      'sigla': sigla,
      'isDepartamento': isDepartamento,
      'espacoGerido': espacoGerido?.toMap(),
    };
  }

  factory UsuarioDto.fromMap(Map<String, dynamic> map) {
    return UsuarioDto(
      id: map['id'] as String,
      nome: map['nome'] as String,
      email: map['email'] as String,
      telefone: map['telefone'] as String,
      photoUrl: map['photoUrl'] as String,
      tipoUsuario: map['tipoUsuario'] as String,
      departamento: map['departamento'] != null ? UsuarioDto.fromMap(map['departamento'] as Map<String,dynamic>) : null,
      sigla: map['sigla'] != null ? map['sigla'] as String : null,
      isDepartamento: map['isDepartamento'] != null ? map['isDepartamento'] as bool : null,
      espacoGerido: map['espacoGerido'] != null ? EspacoDto.fromMap(map['espacoGerido'] as Map<String,dynamic>) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UsuarioDto.fromJson(String source) => UsuarioDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UsuarioDto(id: $id, nome: $nome, email: $email, telefone: $telefone, photoUrl: $photoUrl, tipoUsuario: $tipoUsuario, departamento: $departamento, sigla: $sigla, isDepartamento: $isDepartamento, espacoGerido: $espacoGerido)';
  }

  @override
  bool operator ==(covariant UsuarioDto other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.nome == nome &&
      other.email == email &&
      other.telefone == telefone &&
      other.photoUrl == photoUrl &&
      other.tipoUsuario == tipoUsuario &&
      other.departamento == departamento &&
      other.sigla == sigla &&
      other.isDepartamento == isDepartamento &&
      other.espacoGerido == espacoGerido;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      nome.hashCode ^
      email.hashCode ^
      telefone.hashCode ^
      photoUrl.hashCode ^
      tipoUsuario.hashCode ^
      departamento.hashCode ^
      sigla.hashCode ^
      isDepartamento.hashCode ^
      espacoGerido.hashCode;
  }
}
