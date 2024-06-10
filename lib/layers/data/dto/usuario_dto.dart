// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:uniespaco/layers/data/dto/reserva_dto.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

class UsuarioDto {
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

  UsuarioDto({
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

  UsuarioDto copyWith({
    String? id,
    String? nome,
    String? email,
    String? telefone,
    String? photoUrl,
    List<String>? espacosFavoritados,
    String? tipoUsuario,
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
      tipoUsuario: tipoUsuario ?? this.tipoUsuario,
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
      tipoUsuario: tipoUsuario,
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
      tipoUsuario: usuarioEntity.tipoUsuario,
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
      'tipoUsuario': tipoUsuario,
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
        email: map['email'] as String,
        telefone: map['telefone'] as String,
        photoUrl: map['photoUrl'] as String,
        espacosFavoritados: map['espacosFavoritados'].isEmpty ? <String>[] : map['espacoFavoritados'],
        tipoUsuario: map['tipoUsuario'] as String,
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
    return 'UsuarioDto(id: $id, nome: $nome, email: $email, telefone: $telefone, photoUrl: $photoUrl, tipoUsuario: $tipoUsuario, departamentoId: $departamentoId, sigla: $sigla, isDepartamento: $isDepartamento, espacoGeridoId: $espacoGeridoId, reservas: ${reservas.toString()})';
  }

  @override
  bool operator ==(covariant UsuarioDto other) {
    if (identical(this, other)) return true;

    return other.id == id && other.nome == nome && other.email == email && other.telefone == telefone && other.photoUrl == photoUrl && other.tipoUsuario == tipoUsuario && other.departamentoId == departamentoId && other.sigla == sigla && other.isDepartamento == isDepartamento && other.espacoGeridoId == espacoGeridoId && other.reservas == reservas;
  }

  @override
  int get hashCode {
    return id.hashCode ^ nome.hashCode ^ email.hashCode ^ telefone.hashCode ^ photoUrl.hashCode ^ tipoUsuario.hashCode ^ departamentoId.hashCode ^ sigla.hashCode ^ isDepartamento.hashCode ^ espacoGeridoId.hashCode ^ reservas.hashCode;
  }
}
