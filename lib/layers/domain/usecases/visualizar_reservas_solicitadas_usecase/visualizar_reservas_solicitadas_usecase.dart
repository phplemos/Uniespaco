import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';

abstract class VisualizarReservasSolicitadasUsecase {
  Future<Either<Exception, List<ReservaEntity?>>> call({required String usuarioId});
}
