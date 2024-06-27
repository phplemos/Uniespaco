// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:uniespaco/layers/data/dto/reserva_dto.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

class UsuarioDto {
  // Atributos comum a todos
  final String id;
  final String nome;
  final String email;
  final String telefone;
  final String photoUrl;
  final List<String?> espacosFavoritados;

  // Atributos de seleção de tipo de usuario
  List<UserRole> userRole;

  // Atributos de usuario Professor
  final String? departamentoId;

  // Atributos de usuario setor
  final String? sigla;
  final bool? isDepartamento;

  // Atributod de usuario gestor
  final String? espacoGeridoId;
  final Map<DateTime, List<String>>? reservas;

  UsuarioDto({
    required this.id,
    required this.nome,
    required this.email,
    required this.telefone,
    required this.photoUrl,
    required this.espacosFavoritados,
    required this.userRole,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
    this.espacoGeridoId,
    this.reservas,
  });

  UsuarioDto copyWith({
    String? id,
    String? nome,
    String? email,
    String? telefone,
    String? photoUrl,
    List<String>? espacosFavoritados,
    List<UserRole>? userRole,
    String? departamentoId,
    String? sigla,
    bool? isDepartamento,
    String? espacoGeridoId,
    Map<DateTime, List<String>>? reservas,
  }) {
    return UsuarioDto(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      email: email ?? this.email,
      telefone: telefone ?? this.telefone,
      photoUrl: photoUrl ?? this.photoUrl,
      espacosFavoritados: espacosFavoritados ?? this.espacosFavoritados,
      userRole: userRole ?? this.userRole,
      departamentoId: departamentoId ?? this.departamentoId,
      sigla: sigla ?? this.sigla,
      isDepartamento: isDepartamento ?? this.isDepartamento,
      espacoGeridoId: espacoGeridoId ?? this.espacoGeridoId,
      reservas: reservas ?? this.reservas,
    );
  }

  UsuarioEntity toEntity() {
    return UsuarioEntity(
      id: id,
      nome: nome,
      email: email,
      telefone: telefone,
      photoUrl: photoUrl,
      espacosFavoritados: espacosFavoritados,
      userRole: userRole,
      departamentoId: departamentoId,
      sigla: sigla,
      isDepartamento: isDepartamento,
      espacoGeridoId: espacoGeridoId,
      reservas: reservas,
    );
  }

  factory UsuarioDto.fromEntity(UsuarioEntity usuarioEntity) {
    return UsuarioDto(
      id: usuarioEntity.id,
      nome: usuarioEntity.nome,
      email: usuarioEntity.email,
      telefone: usuarioEntity.telefone,
      photoUrl: usuarioEntity.photoUrl,
      espacosFavoritados: usuarioEntity.espacosFavoritados,
      userRole: usuarioEntity.userRole,
      departamentoId: usuarioEntity.departamentoId,
      sigla: usuarioEntity.sigla,
      isDepartamento: usuarioEntity.isDepartamento,
      espacoGeridoId: usuarioEntity.espacoGeridoId,
      reservas: usuarioEntity.reservas,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'email': email,
      'telefone': telefone,
      'photoUrl': photoUrl,
      'userRole': userRole.map((userRole) => userRole.name).toList(),
      'espacosFavoritados': espacosFavoritados,
      'departamentoId': departamentoId,
      'sigla': sigla,
      'isDepartamento': isDepartamento,
      'espacoGeridoId': espacoGeridoId,
      'reservas': reservas,
    };
  }

  factory UsuarioDto.fromMap(Map<String, dynamic> map) {
    return UsuarioDto(
        id: map['id'] as String,
        nome: map['nome'] as String,
        telefone: map['telefone'] as String,
        email: map['email'] as String,
        photoUrl: map['photoUrl'] as String,
        espacosFavoritados: <String?>[], // TODO: Implementar sistema de favorito sincronizado
        userRole: List<UserRole>.from(map['userRole'].map((userRole) => UserRole.fromMap(userRole))),
        departamentoId: map['departamentoId'],
        sigla: map['sigla'] != null ? map['sigla'] as String : null,
        isDepartamento: map['isDepartamento'] != null ? map['isDepartamento'] as bool : null,
        espacoGeridoId: map['espacoGeridoId'],
        reservas: map['reservas']?.map((key, value) => MapEntry(key, value.map((e) => ReservaDto.fromMap(e)).toList())));
  }

  String toJson() => json.encode(toMap());

  factory UsuarioDto.fromJson(String source) => UsuarioDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UsuarioDto(id: $id, nome: $nome, email: $email, telefone: $telefone, photoUrl: $photoUrl, userRole: $userRole, departamentoId: $departamentoId, sigla: $sigla, isDepartamento: $isDepartamento, espacoGeridoId: $espacoGeridoId, reservas: ${reservas.toString()})';
  }

  @override
  bool operator ==(covariant UsuarioDto other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.nome == nome &&
        other.email == email &&
        other.telefone == telefone &&
        other.photoUrl == photoUrl &&
        listEquals(other.userRole, userRole) &&
        other.departamentoId == departamentoId &&
        other.sigla == sigla &&
        other.isDepartamento == isDepartamento &&
        other.espacoGeridoId == espacoGeridoId &&
        mapEquals(other.reservas, reservas);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        nome.hashCode ^
        email.hashCode ^
        telefone.hashCode ^
        photoUrl.hashCode ^
        userRole.hashCode ^
        departamentoId.hashCode ^
        sigla.hashCode ^
        isDepartamento.hashCode ^
        espacoGeridoId.hashCode ^
        reservas.hashCode;
  }
}
