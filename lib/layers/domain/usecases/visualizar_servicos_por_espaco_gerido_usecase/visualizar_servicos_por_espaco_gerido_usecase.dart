import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';

abstract class VisualizarServicosPorEspacoGeridoUsecase {
  Future<Either<Exception, Map<EspacoEntity, List<ServicoEntity?>>>> call({required String usuarioId});
}
