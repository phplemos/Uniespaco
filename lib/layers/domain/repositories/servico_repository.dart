import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';
import 'package:uniespaco/layers/domain/entities/situacao_solicitacao_enum.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

abstract class ServicoRepository {
  Future<Either<Exception, Map<EspacoEntity, List<UsuarioEntity?>>>> getAllGestoresServicoEspaco();

  Future<Either<Exception, Map<EspacoEntity, List<ServicoEntity?>>>> getAllFromUsuarioGestor({required String usuarioId});

  Future<Either<Exception, List<ServicoEntity?>>> getAllFromUsuario({required String usuarioId});

  Future<Either<Exception, Map<DateTime, List<ServicoEntity?>>>> getAll({required UsuarioEntity usuario});

  Future<Either<Exception, ServicoEntity?>> getById({required String idServico});

  Future<Either<Exception, Map<DateTime, List<ServicoEntity?>>>> getByDay({required UsuarioEntity usuario, required DateTime day});

  Future<Either<Exception, bool>> save({required ServicoEntity servicoEntity});

  Future<Either<Exception, bool>> alterarSituacaoServico({required String servicoId, required Situacao situacao, required List<HorarioEntity?> periodo, required DateTime dia});

  Future<Either<Exception, Map<EspacoEntity, List<ServicoEntity?>>>> getHistoryServicosPorEspaco({required String gestorId});

  Future<Either<Exception, bool>> cancelarServico({required String servicoId});

}
