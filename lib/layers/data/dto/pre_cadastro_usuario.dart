import 'package:flutter/foundation.dart';
import 'package:uniespaco/layers/domain/entities/precadastro_usuario_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

class PreCadastroUsuarioDto {
  final String email;
  final List<UserRole> userRole;

  const PreCadastroUsuarioDto({
    required this.email,
    required this.userRole,
  });

  PreCadastroUsuarioDto copyWith({
    String? email,
    List<UserRole>? userRole,
  }) {
    return PreCadastroUsuarioDto(
      email: email ?? this.email,
      userRole: userRole ?? this.userRole,
    );
  }

  PreCadastroUsuarioEntity toEntity() {
    return PreCadastroUsuarioEntity(email: email, userRole: userRole);
  }

  factory PreCadastroUsuarioDto.fromEntity(PreCadastroUsuarioEntity precadastro) {
    return PreCadastroUsuarioDto(email: precadastro.email, userRole: precadastro.userRole);
  }

  toMap() {
    return {
      'email': email,
      'userRole': userRole.map((userRole) => userRole.name),
    };
  }

  factory PreCadastroUsuarioDto.fromMap(Map<String, dynamic> map) {
    return PreCadastroUsuarioDto(
      email: map['email'] as String,
      userRole: map['userRole'] != null ? map['userRole'].map((userRole) => UserRole.fromMap(userRole)) : [],
    );
  }

  @override
  String toString() {
    return 'PreCadastroUsuarioDto{ email: $email, userRole: $userRole }';
  }

  @override
  bool operator ==(Object other) => identical(this, other) || (other is PreCadastroUsuarioDto && runtimeType == other.runtimeType && email == other.email && listEquals(userRole, other.userRole));

  @override
  int get hashCode => email.hashCode ^ userRole.hashCode;
}
