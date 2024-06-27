import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/reserva_repository.dart';
import 'package:uniespaco/layers/domain/usecases/listar_gestores_reserva_cadastrados_usecase/listar_gestores_reserva_cadastrados_usecase.dart';

class ListarGestoresReservaCadastradosUsecaseImpl implements ListarGestoresReservaCadastradosUsecase {
  final ReservaRepository reservaRepository;

  ListarGestoresReservaCadastradosUsecaseImpl({required this.reservaRepository});

  Future<Either<Exception, List<UsuarioEntity?>>> call() {
    return reservaRepository.getAllGestoresReserva();
  }
}
