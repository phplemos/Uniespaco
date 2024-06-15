import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/domain/repositories/reserva_repository.dart';
import 'package:uniespaco/layers/domain/usecases/visualizar_reservas_por_espaco_gerido_usecase/visualizar_reservas_por_espaco_gerido_usecase.dart';

class VisualizarReservasPorEspacoGeridoUsecaseImpl implements VisualizarReservasPorEspacoGeridoUsecase {
  final ReservaRepository reservaRepository;

  VisualizarReservasPorEspacoGeridoUsecaseImpl({required this.reservaRepository});

  @override
  Future<Either<Exception, Map<EspacoEntity, List<ReservaEntity?>>>> call({required String usuarioId}) {
    return reservaRepository.getAllFromUsuarioGestor(usuarioId: usuarioId);
  }
}
