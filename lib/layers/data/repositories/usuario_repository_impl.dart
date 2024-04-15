import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/data/datasources/datasource.dart';
import 'package:uniespaco/layers/data/datasources/google_auth.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/usuario_repository.dart';

class UsuarioRepositoryImpl implements UsuarioRepository {
  final DataSource dataSource;
  final GoogleAuth googleAuth;

  UsuarioRepositoryImpl({
    required this.dataSource,
    required this.googleAuth,
  });

  @override
  Future<Either<Exception, UsuarioEntity>> get() async {
    try {
      return Right(await googleAuth.getUsuario());
    } catch (e) {
      return Left(Exception("Erro ao recuperar o usuario!"));
    }
  }

  @override
  Future<Either<Exception, bool>> login() async {
    try {
      if (await googleAuth.login()) {
        return const Right(true);
      }
      return const Right(false);
    } catch (e) {
      return Left(Exception("Erro ao efetuar o login!"));
    }
  }

  @override
  Future<Either<Exception, void>> logout() async {
    try {
      await googleAuth.logout();
      return const Right(null);
    } catch (e) {
      return Left(Exception('Erro ao sair da conta'));
    }
  }

  @override
  Future<Either<Exception, bool>> update({required UsuarioEntity usuarioEntity}) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
