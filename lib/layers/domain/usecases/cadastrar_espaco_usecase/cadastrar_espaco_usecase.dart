import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';

abstract class CadastrarEspacoUseCase {
  Future<Either<Exception, bool>> call({required EspacoEntity espacoEntity});
}
