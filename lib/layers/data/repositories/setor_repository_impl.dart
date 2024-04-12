import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/setor_repository.dart';

class SetorRepositoryImpl extends SetorRepository {
  
  @override
  Future<Either<Exception, List<UsuarioEntity>>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, UsuarioEntity>> getById({required String id}) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, bool>> save({required UsuarioEntity setorEntity}) {
    // TODO: implement save
    throw UnimplementedError();
  }


}
