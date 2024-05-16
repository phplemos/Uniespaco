class PreCadastroUsuarioEntity {
  final String email;
  final String tipoUsuario;

  const PreCadastroUsuarioEntity({
    required this.email,
    required this.tipoUsuario,
  });

  @override
  String toString() {
    return 'PreCadastroUsuarioEntity{' +
        ' email: $email,' +
        ' tipoUsuario: $tipoUsuario,' +
        '}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PreCadastroUsuarioEntity &&
          runtimeType == other.runtimeType &&
          email == other.email &&
          tipoUsuario == other.tipoUsuario);

  @override
  int get hashCode => email.hashCode ^ tipoUsuario.hashCode;
}
