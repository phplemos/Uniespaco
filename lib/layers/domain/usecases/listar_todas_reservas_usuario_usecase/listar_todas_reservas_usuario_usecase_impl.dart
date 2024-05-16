import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/reserva_repository.dart';

import 'listar_todas_reservas_usuario_usecase.dart';

class ListarTodasReservasUsuarioUseCaseImpl implements ListarTodasReservasUsuarioUseCase {
  final ReservaRepository reservaRepository;

  ListarTodasReservasUsuarioUseCaseImpl({required this.reservaRepository});

  @override
  Future<Either<Exception, Map<DateTime, List<ReservaEntity>>>> call({required UsuarioEntity usuarioEntity}) {
    return reservaRepository.getAll(usuario: usuarioEntity);
  }
}
