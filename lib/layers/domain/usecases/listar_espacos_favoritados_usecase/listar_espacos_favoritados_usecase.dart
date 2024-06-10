import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';

abstract class ListarEspacosFavoritadosUseCase {
  Future<Either<Exception, List<EspacoEntity?>>> call({required String usuarioId});
}
