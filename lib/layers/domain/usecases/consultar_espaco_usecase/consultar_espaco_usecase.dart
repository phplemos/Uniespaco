import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';

abstract class ConsultarEspacoUseCase {
  Future<Either<Exception, EspacoEntity?>> call({required String idEspaco});
}
