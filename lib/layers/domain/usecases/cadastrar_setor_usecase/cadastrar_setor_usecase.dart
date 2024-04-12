import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

abstract class CadastrarSetorUseCase {
  Future<Either<Exception, bool>> call({required UsuarioEntity setorEntity});
}
