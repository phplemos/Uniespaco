import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/usuario_repository.dart';

class UsuarioRepositoryImpl implements UsuarioRepository {
  @override
  Future<Either<Exception, UsuarioEntity>> get() {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, bool>> login() {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, bool>> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, bool>> update(
      {required UsuarioEntity usuarioEntity}) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
