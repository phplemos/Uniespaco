import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/espaco/espaco_firebase_datasource.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/servico/servico_firebase_datasource.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/usuario/usuario_firebase_datasource.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';
import 'package:uniespaco/layers/domain/entities/situacao_solicitacao_enum.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/servico_repository.dart';
import 'package:uuid/uuid.dart';

class ServicoRepositoryImpl implements ServicoRepository {
  final servicoDatasource = ServicoFirebaseDataSource();
  final usuarioDatasource = UsuarioFirebaseDataSource();
  final espacoDatasource = EspacoFirebaseDataSource();

  @override
  Future<Either<Exception, Map<DateTime, List<ServicoEntity?>>>> getAll({required UsuarioEntity usuario}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, bool>> save({required ServicoEntity servicoEntity}) async {
    try {
      const uuid = Uuid();
      servicoEntity.id = uuid.v4();
      final resultServico = await servicoDatasource.createServico(servicoEntity: servicoEntity);
      return Right(resultServico);
    } catch (e) {
      return Left(Exception('Erro ao cadastrar o espaço'));
    }
  }

  @override
  Future<Either<Exception, Map<DateTime, List<ServicoEntity?>>>> getByDay({required UsuarioEntity usuario, required DateTime day}) {
    // TODO: implement getByDay
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, List<ServicoEntity?>>> getAllFromUsuario({required String usuarioId}) async {
    try {
      return Right(await servicoDatasource.getAllServicosFromUsuario(solicitanteId: usuarioId));
    } catch (e) {
      return Left(Exception('Erro ao recuperar todas reservas'));
    }
  }

  @override
  Future<Either<Exception, Map<EspacoEntity, List<ServicoEntity?>>>> getAllFromUsuarioGestor({required String usuarioId}) async {
    try {
      return Right(await servicoDatasource.getAllServicosFromUsuarioGestor(solicitanteId: usuarioId));
    } catch (e) {
      return Left(Exception('Erro ao recuperar todas reservas'));
    }
  }

  @override
  Future<Either<Exception, Map<EspacoEntity, List<UsuarioEntity?>>>> getAllGestoresServicoEspaco() async {
    try {
      return Right(await espacoDatasource.getAllGestoresServicoPorEspaco());
    } catch (e) {
      return Left(Exception('Erro ao recuperar todas reservas'));
    }
  }

  @override
  Future<Either<Exception, ServicoEntity?>> getById({required String idServico}) async {
    try {
      return Right(await servicoDatasource.getServicoById(id: idServico));
    } catch (e) {
      return Left(Exception('Erro ao recuperar todas reservas'));
    }
  }

  @override
  Future<Either<Exception, bool>> alterarSituacaoServico({required String servicoId, required Situacao situacao, required List<HorarioEntity?> periodo, required DateTime dia}) async {
    try {
      final servico = await servicoDatasource.getServicoById(id: servicoId);
      final espaco = await espacoDatasource.getEspacoById(id: servico!.espacoId);
      if (situacao == Situacao.HOMOLOGADO) {
        // Acessa o dia do servico para alterar a situação dos horarios, tornando o servico valido
        // e bloqueando o horario para possiveis novas reservas ou solicitações de servico
        espaco?.agenda[servico.dia] = espaco.agenda[servico.dia]!.map((key, value) {
          value.horarios = value.horarios.map((horario) {
            periodo.forEach((cadaPeriodo) {
              if (cadaPeriodo?.inicio == horario.inicio) {
                horario.isReserved = true;
                horario.servicoId = servicoId;
              }
            });
            return horario;
          }).toList();
          return MapEntry(key, value);
        });
      } else if (situacao == Situacao.CANCELADO) {
        // Acessa o dia do servico para alterar a situação dos horarios, tornando o servico valido
        // e bloqueando o horario para possiveis novas reservas ou solicitações de servico
        espaco?.agenda[servico.dia] = espaco.agenda[servico.dia]!.map((key, value) {
          value.horarios = value.horarios.map((horario) {
            periodo.forEach((cadaPeriodo) {
              if (cadaPeriodo?.inicio == horario.inicio) {
                horario.isReserved = false;
                horario.servicoId = null;
              }
            });
            return horario;
          }).toList();
          return MapEntry(key, value);
        });
      }
      servico.dia = dia;
      servico.status = situacao.text!;
      servico.periodo.addAll(periodo);
      await espacoDatasource.updateEspaco(espaco: espaco!);
      return Right(await servicoDatasource.updateServico(servicoEntity: servico));
    } catch (e) {
      return Left(Exception('Erro ao atualizar'));
    }
  }

  @override
  Future<Either<Exception, Map<EspacoEntity, List<ServicoEntity?>>>> getHistoryServicosPorEspaco({required String gestorId}) async {
    try {
      return Right(await servicoDatasource.getHistoryServicos(solicitanteId: gestorId));
    } catch (e) {
      return Left(Exception('Erro ao recuperar historico de reservas'));
    }
  }

  @override
  Future<Either<Exception, bool>> cancelarServico({required String servicoId}) async {
    try {
      final servico = await servicoDatasource.getServicoById(id: servicoId);
      final espaco = await espacoDatasource.getEspacoById(id: servico!.espacoId);
      // Acessa o dia do servico para alterar a situação dos horarios, tornando o servico valido
      // e bloqueando o horario para possiveis novas reservas ou solicitações de servico
      espaco?.agenda[servico.dia] = espaco.agenda[servico.dia]!.map((key, value) {
        value.horarios = value.horarios.map((horario) {
          servico.periodo.forEach((cadaPeriodo) {
            if (cadaPeriodo?.inicio == horario.inicio) {
              horario.isReserved = false;
              horario.servicoId = null;
            }
          });
          return horario;
        }).toList();
        return MapEntry(key, value);
      });

      servico.status = Situacao.CANCELADO.text!;

      await espacoDatasource.updateEspaco(espaco: espaco!);
      return Right(await servicoDatasource.updateServico(servicoEntity: servico));
    } catch (e) {
      return Left(Exception('Erro ao atualizar'));
    }
  }

  @override
  Future<Either<Exception, List<UsuarioEntity?>>> getAllGestoresServico() async {
    try {
      return Right(await servicoDatasource.getAllGestoresServico());
    } catch (e) {
      return Left(Exception('Erro ao listar todos gestores de servico'));
    }
  }
}
