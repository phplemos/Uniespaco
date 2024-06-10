import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/reserva_repository.dart';
import 'package:uniespaco/layers/domain/usecases/listar_reservas_usuario_por_dia_usecase/listar_reservas_usuario_por_dia_usecase.dart';

class ListarReservasUsuarioPorDiaUseCaseImpl implements ListarReservasUsuarioPorDiaUseCase {
  final ReservaRepository reservaRepository;

  ListarReservasUsuarioPorDiaUseCaseImpl({required this.reservaRepository});

  Future<Either<Exception, Map<DateTime, List<ReservaEntity?>>>> call({required UsuarioEntity usuarioEntity, required DateTime day}) {
    return reservaRepository.getByDay(usuario: usuarioEntity, day: day);
  }
}
