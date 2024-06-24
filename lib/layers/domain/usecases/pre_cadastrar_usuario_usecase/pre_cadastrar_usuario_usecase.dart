import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/precadastro_usuario_entity.dart';

abstract class PreCadastrarUsuarioUseCase {
  Future<Either<Exception, bool>> call({required PreCadastroUsuarioEntity preCadastroUsuarioEntity});
}
