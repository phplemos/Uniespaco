import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/domain/repositories/reserva_repository.dart';
import 'package:uniespaco/layers/domain/usecases/solicitar_reserva_usecase/solicitar_reserva_usecase.dart';

class SolicitarReservaUseCaseImpl implements SolicitarReservaUseCase {
  final ReservaRepository reservaRepository;

  SolicitarReservaUseCaseImpl({required this.reservaRepository});

  @override
  Future<Either<Exception, bool>> call({required ReservaEntity reservaEntity, required DateTime selectedDay}) {
    return reservaRepository.save(reservaEntity: reservaEntity, selectedDay: selectedDay);
  }
}
