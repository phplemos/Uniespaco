// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:uniespaco/layers/data/dto/espaco_dto.dart';
import 'package:uniespaco/layers/data/dto/reserva_dto.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

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
  final Map<DateTime, List<ReservaDto>>? reservas;

  UsuarioDto({required this.id, required this.nome, required this.email, required this.telefone, required this.photoUrl, required this.tipoUsuario, this.departamento, this.sigla, this.isDepartamento, this.espacoGerido, this.reservas});

  UsuarioDto copyWith(
      {String? id, String? nome, String? email, String? telefone, String? photoUrl, String? tipoUsuario, UsuarioDto? departamento, String? sigla, bool? isDepartamento, EspacoDto? espacoGerido, Map<DateTime, List<ReservaDto>>? reservas}) {
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
        reservas: reservas ?? this.reservas);
  }

  UsuarioEntity toEntity() {
    return UsuarioEntity(
        id: id,
        nome: nome,
        email: email,
        telefone: telefone,
        photoUrl: photoUrl,
        tipoUsuario: tipoUsuario,
        departamento: departamento?.toEntity(),
        sigla: sigla,
        isDepartamento: isDepartamento,
        espacoGerido: espacoGerido?.toEntity(),
        reservas: reservas?.map((key, value) => MapEntry(key, value.map((e) => e.toEntity()).toList())));
  }

  factory UsuarioDto.fromEntity(UsuarioEntity usuarioEntity) {
    return UsuarioDto(
        id: usuarioEntity.id,
        nome: usuarioEntity.nome,
        email: usuarioEntity.email,
        telefone: usuarioEntity.telefone,
        photoUrl: usuarioEntity.photoUrl,
        tipoUsuario: usuarioEntity.tipoUsuario,
        departamento: usuarioEntity.departamento != null ? UsuarioDto.fromEntity(usuarioEntity.departamento!) : null,
        sigla: usuarioEntity.sigla,
        isDepartamento: usuarioEntity.isDepartamento,
        espacoGerido: usuarioEntity.espacoGerido != null ? EspacoDto.fromEntity(usuarioEntity.espacoGerido!) : null,
        reservas: usuarioEntity.reservas?.map((key, value) => MapEntry(key, value.map((e) => ReservaDto.fromEntity(e)).toList())));
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
      'reservas': reservas?.map((key, value) => MapEntry(key, value.map((e) => e.toMap()).toList()))
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
        departamento: map['departamento'] != null ? UsuarioDto.fromMap(map['departamento'] as Map<String, dynamic>) : null,
        sigla: map['sigla'] != null ? map['sigla'] as String : null,
        isDepartamento: map['isDepartamento'] != null ? map['isDepartamento'] as bool : null,
        espacoGerido: map['espacoGerido'] != null ? EspacoDto.fromMap(map['espacoGerido'] as Map<String, dynamic>) : null,
        reservas: map['reservas']?.map((key, value) => MapEntry(key, value.map((e) => ReservaDto.fromMap(e)).toList())));
  }

  String toJson() => json.encode(toMap());

  factory UsuarioDto.fromJson(String source) => UsuarioDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UsuarioDto(id: $id, nome: $nome, email: $email, telefone: $telefone, photoUrl: $photoUrl, tipoUsuario: $tipoUsuario, departamento: $departamento, sigla: $sigla, isDepartamento: $isDepartamento, espacoGerido: $espacoGerido, reservas: ${reservas.toString()})';
  }

  @override
  bool operator ==(covariant UsuarioDto other) {
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
