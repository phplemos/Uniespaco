import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';

abstract class ConsultarReservaUseCase {
  Future<Either<Exception, ReservaEntity?>> call({required String idReserva});
}
