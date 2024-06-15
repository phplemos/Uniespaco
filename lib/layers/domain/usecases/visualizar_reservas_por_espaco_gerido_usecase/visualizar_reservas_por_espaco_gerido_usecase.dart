import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';

abstract class VisualizarReservasPorEspacoGeridoUsecase {
  Future<Either<Exception, Map<EspacoEntity, List<ReservaEntity?>>>> call({required String usuarioId});
}
