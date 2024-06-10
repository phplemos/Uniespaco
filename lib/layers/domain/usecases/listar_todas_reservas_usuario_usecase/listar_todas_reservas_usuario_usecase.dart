import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

abstract class ListarTodasReservasUsuarioUseCase {
  Future<Either<Exception, Map<DateTime, List<ReservaEntity?>>>> call({required UsuarioEntity usuarioEntity});
}
