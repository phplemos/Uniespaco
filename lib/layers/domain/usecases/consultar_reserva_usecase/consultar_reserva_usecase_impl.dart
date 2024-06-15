import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/domain/repositories/reserva_repository.dart';
import 'package:uniespaco/layers/domain/usecases/consultar_reserva_usecase/consultar_reserva_usecase.dart';

class ConsultarReservaUseCaseImpl implements ConsultarReservaUseCase {
  final ReservaRepository reservaRepository;

  ConsultarReservaUseCaseImpl({required this.reservaRepository});

  @override
  Future<Either<Exception, ReservaEntity?>> call({required String idReserva}) {
    return reservaRepository.getById(idReserva: idReserva);
  }
}
