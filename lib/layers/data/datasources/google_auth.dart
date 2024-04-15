import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

abstract class GoogleAuth {
  
  Future<UsuarioEntity> getUsuario();

  Future<bool> login();

  Future<void> logout();

  Future<void> verificarRegistro({required Map<String, dynamic> usuarioInfo});
}
