import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/domain/repositories/reserva_repository.dart';
import 'package:uniespaco/layers/domain/usecases/ver_historico_reservas_por_espaco_usecase/ver_historico_reservas_por_espaco_usecase.dart';

class VerHistoricoReservasPorEspacoUseCaseImpl implements VerHistoricoReservasPorEspacoUseCase {
  final ReservaRepository reservaRepository;

  VerHistoricoReservasPorEspacoUseCaseImpl({required this.reservaRepository});

  @override
  Future<Either<Exception, Map<EspacoEntity, List<ReservaEntity?>>>> call({required String usuarioId}) {
    return reservaRepository.getHistoryReservaPorEspaco(gestorId: usuarioId);
  }
}
