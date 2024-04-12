import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';

abstract class ListarTodosEspacosUseCase {
  Future<Either<Exception, List<EspacoEntity>>> call();
}
