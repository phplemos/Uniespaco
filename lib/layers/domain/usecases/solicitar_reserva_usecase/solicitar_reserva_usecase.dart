import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';

abstract class SolicitarReservaUseCase {
  Future<Either<Exception, bool>> call({required ReservaEntity reservaEntity, required DateTime selectedDay});
}
