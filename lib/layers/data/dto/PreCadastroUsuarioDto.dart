import 'package:uniespaco/layers/domain/entities/precadastro_usuario_entity.dart';

class PreCadastroUsuarioDto {
  final String email;
  final String tipoUsuario;

  const PreCadastroUsuarioDto({
    required this.email,
    required this.tipoUsuario,
  });

  PreCadastroUsuarioEntity toEntity() {
    return PreCadastroUsuarioEntity(email: email, tipoUsuario: tipoUsuario);
  }

  factory PreCadastroUsuarioDto.fromEntity(
      PreCadastroUsuarioEntity precadastro) {
    return PreCadastroUsuarioDto(
        email: precadastro.email, tipoUsuario: precadastro.tipoUsuario);
  }

  PreCadastroUsuarioDto copyWith({
    String? email,
    String? tipoUsuario,
  }) {
    return PreCadastroUsuarioDto(
      email: email ?? this.email,
      tipoUsuario: tipoUsuario ?? this.tipoUsuario,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': this.email,
      'tipoUsuario': this.tipoUsuario,
    };
  }

  factory PreCadastroUsuarioDto.fromMap(Map<String, dynamic> map) {
    return PreCadastroUsuarioDto(
      email: map['email'] as String,
      tipoUsuario: map['tipoUsuario'] as String,
    );
  }

  @override
  String toString() {
    return 'PreCadastroUsuarioDto{' +
        ' email: $email,' +
        ' tipoUsuario: $tipoUsuario,' +
        '}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PreCadastroUsuarioDto &&
          runtimeType == other.runtimeType &&
          email == other.email &&
          tipoUsuario == other.tipoUsuario);

  @override
  int get hashCode => email.hashCode ^ tipoUsuario.hashCode;
}
