import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/domain/repositories/reserva_repository.dart';
import 'package:uniespaco/layers/domain/usecases/visualizar_reservas_solicitadas_usecase/visualizar_reservas_solicitadas_usecase.dart';

class VisualizarReservasSolicitadasUsecaseImpl implements VisualizarReservasSolicitadasUsecase {
  final ReservaRepository reservaRepository;

  VisualizarReservasSolicitadasUsecaseImpl({required this.reservaRepository});

  @override
  Future<Either<Exception, List<ReservaEntity?>>> call({required String usuarioId}) {
    return reservaRepository.getAllFromUsuario(usuarioId: usuarioId);
  }
}
