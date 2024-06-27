import 'package:flutter/foundation.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

class PreCadastroUsuarioEntity {
  final String email;
  List<UserRole> userRole;

  PreCadastroUsuarioEntity({
    required this.email,
    required this.userRole,
  });

  @override
  String toString() {
    return 'PreCadastroUsuarioEntity{ email: $email, userRole: $userRole }';
  }

  @override
  bool operator ==(Object other) => identical(this, other) || (other is PreCadastroUsuarioEntity && runtimeType == other.runtimeType && email == other.email && listEquals(userRole, other.userRole));

  @override
  int get hashCode => email.hashCode ^ userRole.hashCode;
}
