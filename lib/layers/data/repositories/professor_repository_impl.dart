import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/professor_repository.dart';

class ProfessorRepositoryImpl implements ProfessorRepository{
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
  Future<Either<Exception, bool>> save({required UsuarioEntity professorEntity}) {
    // TODO: implement save
    throw UnimplementedError();
  }

}