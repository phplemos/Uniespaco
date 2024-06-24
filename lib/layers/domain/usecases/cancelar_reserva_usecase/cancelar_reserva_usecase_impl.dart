import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/repositories/reserva_repository.dart';
import 'package:uniespaco/layers/domain/usecases/cancelar_reserva_usecase/cancelar_reserva_usecase.dart';

class CancelarReservaUseCaseImpl implements CancelarReservaUseCase {
  final ReservaRepository reservaRepository;

  CancelarReservaUseCaseImpl({required this.reservaRepository});

  @override
  Future<Either<Exception, bool>> call({required String reservaId}) {
    return reservaRepository.cancelarReserva(reservaId: reservaId);
  }
}
