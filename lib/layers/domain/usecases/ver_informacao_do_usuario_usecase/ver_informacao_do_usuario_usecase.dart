import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

abstract class VerInformacaoDoUsuarioUseCase {
  Future<Either<Exception, UsuarioEntity?>> call();
}
