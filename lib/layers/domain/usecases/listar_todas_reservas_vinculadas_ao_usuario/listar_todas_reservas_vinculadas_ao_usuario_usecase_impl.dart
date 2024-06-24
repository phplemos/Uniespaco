import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/domain/repositories/reserva_repository.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todas_reservas_vinculadas_ao_usuario/listar_todas_reservas_vinculadas_ao_usuario_usecase.dart';

class ListarTodasReservasVinculadasAoUsuarioUseCaseImpl implements ListarTodasReservasVinculadasAoUsuarioUseCase {
  final ReservaRepository reservaRepository;

  ListarTodasReservasVinculadasAoUsuarioUseCaseImpl({required this.reservaRepository});

  @override
  Future<Either<Exception, List<ReservaEntity?>>> call({required String usuarioId}) {
    return reservaRepository.getAllFromUsuario(usuarioId: usuarioId);
  }
}
