import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

abstract class UsuarioRepository {
  Future<Either<Exception, UsuarioEntity>> get();

  Future<Either<Exception, bool>> update(
      {required UsuarioEntity usuarioEntity});

  Future<Either<Exception, bool>> login();

  Future<Either<Exception, bool>> logout();
}
