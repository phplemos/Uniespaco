import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/domain/entities/situacao_solicitacao_enum.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

abstract class ReservaRepository {
  Future<Either<Exception, Map<EspacoEntity, List<UsuarioEntity?>>>> getAllGestoresReservaEspaco();

  Future<Either<Exception, Map<EspacoEntity, List<ReservaEntity?>>>> getAllFromUsuarioGestor({required String usuarioId});

  Future<Either<Exception, ReservaEntity?>> getById({required String idReserva});

  Future<Either<Exception, List<ReservaEntity?>>> getAllFromUsuario({required String usuarioId});

  Future<Either<Exception, Map<DateTime, List<ReservaEntity?>>>> getAll({required UsuarioEntity usuario});

  Future<Either<Exception, Map<DateTime, List<ReservaEntity?>>>> getByDay({required UsuarioEntity usuario, required DateTime day});

  Future<Either<Exception, bool>> save({required ReservaEntity reservaEntity, required DateTime selectedDay});

  Future<Either<Exception, bool>> alterarSituacaoReserva({required String reservaId, required Situacao situacao});

  Future<Either<Exception, Map<EspacoEntity, List<ReservaEntity?>>>> getHistoryReservaPorEspaco({required String gestorId});

  Future<Either<Exception, bool>> cancelarReserva({required String reservaId});
}
