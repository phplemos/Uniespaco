import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';

abstract class ListarEspacosPorCampusUseCase {
  Future<Either<Exception, List<EspacoEntity?>>> call({required Campus campus});
}
