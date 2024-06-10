import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

abstract class ReservaRepository {
  Future<Either<Exception, Map<DateTime, List<ReservaEntity?>>>> getAll({required UsuarioEntity usuario});

  Future<Either<Exception, Map<DateTime, List<ReservaEntity?>>>> getByDay({required UsuarioEntity usuario, required DateTime day});

  Future<Either<Exception, bool>> save({required ReservaEntity reservaEntity});
}
