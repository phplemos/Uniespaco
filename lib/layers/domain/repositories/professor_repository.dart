import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

abstract class ProfessorRepository {

  Future<Either<Exception, List<UsuarioEntity>>> getAll();

  Future<Either<Exception, UsuarioEntity>> getById({required String id});

  Future<Either<Exception, bool>> save({required UsuarioEntity professorEntity});
}
