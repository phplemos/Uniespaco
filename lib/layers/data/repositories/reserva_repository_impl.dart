import 'package:dartz/dartz.dart';
import 'package:dartz/dartz_unsafe.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/espaco/espaco_firebase_datasource.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/reserva/reserva_firebase_datasource.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/usuario/usuario_firebase_datasource.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/domain/entities/situacao_solicitacao_enum.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/espaco_repository.dart';
import 'package:uniespaco/layers/domain/repositories/reserva_repository.dart';
import 'package:uuid/uuid.dart';

class ReservaRepositoryImpl implements ReservaRepository {
  final reservaDatasource = ReservaFirebaseDataSource();
  final usuarioDatasource = UsuarioFirebaseDataSource();
  final espacoDatasource = EspacoFirebaseDataSource();

  ReservaRepositoryImpl();

  @override
  Future<Either<Exception, List<ReservaEntity?>>> getAllFromUsuario({required String usuarioId}) async {
    try {
      return Right(await reservaDatasource.getAllReservasFromUsuario(solicitanteId: usuarioId));
    } catch (e) {
      return Left(Exception('Erro ao recuperar todas reservas'));
    }
  }

  @override
  Future<Either<Exception, bool>> save({required ReservaEntity reservaEntity, required DateTime selectedDay}) async {
    try {
      const uuid = Uuid();
      reservaEntity.id = uuid.v4();
      final espacoEntity = await espacoDatasource.getEspacoById(id: reservaEntity.espacoId);

      List<HorarioEntity> horariosManha = [];
      List<HorarioEntity> horariosTarde = [];
      List<HorarioEntity> horariosNoite = [];
      reservaEntity.periodo.forEach((horario) {
        if (horario.inicio == '7:30' || horario.inicio == '9:10' || horario.inicio == '10:10' || horario.inicio == '11:00' || horario.inicio == '11:50') {
          horariosManha.add(horario);
        } else if (horario.inicio == '13:10' || horario.inicio == '14:00' || horario.inicio == '14:50' || horario.inicio == '15:50' || horario.inicio == '16:40' || horario.inicio == '17:30') {
          horariosTarde.add(horario);
        } else {
          horariosNoite.add(horario);
        }
      });
      espacoEntity?.agenda[selectedDay]!.updateAll((turno, agenda) {
        // Verifica se há seleção nos horarios da manha
        if (horariosManha.isNotEmpty && turno == 'manha') {
          // Atualiza o valor da chave da noite que tem uma agendaEntity como valor
          espacoEntity.agenda[selectedDay]!.update('manha', (agendaTurno) {
            // Atualiza a lista de horarios e coloca o id do gestor caso usuario tenha marcado checkbox
            agendaTurno.horarios = agendaTurno.horarios.map((horario) {
              if (horariosManha.contains(horario)) {
                // Verifica se quem está solicitando é o gestor para reservar direto sem necessidade de alterar situação
                if (horario.gestorReserva == reservaEntity.solicitanteId) {
                  horario.isReserved = true;
                  reservaEntity.status = Situacao.HOMOLOGADO.text!;
                }
                horario.reservaId = reservaEntity.id;
                return horario;
              }
              return horario;
            }).toList();
            return agendaTurno;
          });
        }
        if (horariosTarde.isNotEmpty && turno == 'tarde') {
          // Atualiza o valor da chave da noite que tem uma agendaEntity como valor
          espacoEntity.agenda[selectedDay]!.update('tarde', (agendaTurno) {
            // Atualiza a lista de horarios e coloca o id do gestor caso usuario tenha marcado checkbox
            agendaTurno.horarios = agendaTurno.horarios.map((horario) {
              if (horariosTarde.contains(horario)) {
                // Verifica se quem está solicitando é o gestor para reservar direto sem necessidade de alterar situação
                if (horario.gestorReserva == reservaEntity.solicitanteId) {
                  horario.isReserved = true;
                  reservaEntity.status = Situacao.HOMOLOGADO.text!;
                }
                horario.reservaId = reservaEntity.id;
                return horario;
              }
              return horario;
            }).toList();
            return agendaTurno;
          });
        }
        if (horariosNoite.isNotEmpty && turno == 'noite') {
          // Atualiza o valor da chave da noite que tem uma agendaEntity como valor
          espacoEntity.agenda[selectedDay]!.update('noite', (agendaTurno) {
            // Atualiza a lista de horarios e coloca o id do gestor caso usuario tenha marcado checkbox
            agendaTurno.horarios = agendaTurno.horarios.map((horario) {
              if (horariosNoite.contains(horario)) {
                // Verifica se quem está solicitando é o gestor para reservar direto sem necessidade de alterar situação
                if (horario.gestorReserva == reservaEntity.solicitanteId) {
                  horario.isReserved = true;
                  reservaEntity.status = Situacao.HOMOLOGADO.text!;
                }
                horario.reservaId = reservaEntity.id;
                return horario;
              }
              return horario;
            }).toList();
            return agendaTurno;
          });
        }
        return agenda;
      });
      final resultReserva = await reservaDatasource.createReserva(reservaEntity: reservaEntity);
      final resultEspaco = await espacoDatasource.updateEspaco(espaco: espacoEntity!);
      return Right(resultReserva && resultEspaco);
    } catch (e) {
      return Left(Exception('Erro ao cadastrar o espaço'));
    }
  }

  @override
  Future<Either<Exception, Map<DateTime, List<ReservaEntity>>>> getByDay({required UsuarioEntity usuario, required DateTime day}) {
    // TODO: implement getByDay
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, Map<DateTime, List<ReservaEntity?>>>> getAll({required UsuarioEntity usuario}) {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, Map<EspacoEntity, List<ReservaEntity?>>>> getAllFromUsuarioGestor({required String usuarioId}) async {
    try {
      return Right(await reservaDatasource.getAllReservasFromUsuarioGestor(gestorId: usuarioId));
    } catch (e) {
      return Left(Exception('Erro ao recuperar todas reservas'));
    }
  }

  @override
  Future<Either<Exception, Map<EspacoEntity, List<UsuarioEntity?>>>> getAllGestoresReservaEspaco() async {
    try {
      return Right(await espacoDatasource.getAllGestoresReservaPorEspaco());
    } catch (e) {
      return Left(Exception('Erro ao recuperar todas reservas'));
    }
  }

  @override
  Future<Either<Exception, ReservaEntity?>> getById({required String idReserva}) async {
    try {
      return Right(await reservaDatasource.getReservaById(id: idReserva));
    } catch (e) {
      return Left(Exception('Erro ao recuperar todas reservas'));
    }
  }

  @override
  Future<Either<Exception, bool>> alterarSituacaoReserva({required String reservaId, required Situacao situacao}) async {
    try {
      final reserva = await reservaDatasource.getReservaById(id: reservaId);
      final espaco = await espacoDatasource.getEspacoById(id: reserva!.espacoId);
      if (situacao == Situacao.HOMOLOGADO) {
        // Acessa o dia da reserva para alterar a situação dos horarios, tornando a reserva valida
        // e bloqueando o horario para possiveis novas reservas
        espaco?.agenda[reserva.dia] = espaco.agenda[reserva.dia]!.map((key, value) {
          value.horarios = value.horarios.map((horario) {
            reserva.periodo.forEach((cadaPeriodo) {
              if (cadaPeriodo.inicio == horario.inicio) {
                horario.isReserved = true;
              }
            });
            return horario;
          }).toList();
          return MapEntry(key, value);
        });
      } else if (situacao == Situacao.CANCELADO) {
        // Acessa o dia da reserva para alterar a situação dos horarios, tornando a reserva invalida
        // e liberando o horario para possiveis novas reservas
        espaco?.agenda[reserva.dia] = espaco.agenda[reserva.dia]!.map((key, value) {
          value.horarios = value.horarios.map((horario) {
            reserva.periodo.forEach((cadaPeriodo) {
              if (cadaPeriodo.inicio == horario.inicio) {
                horario.isReserved = false;
                horario.reservaId = null;
              }
            });
            return horario;
          }).toList();
          return MapEntry(key, value);
        });
      }
      reserva.status = situacao.text!;
      await espacoDatasource.updateEspaco(espaco: espaco!);
      return Right(await reservaDatasource.updateReserva(reservaEntity: reserva));
    } catch (e) {
      return Left(Exception('Erro ao atualizar'));
    }
  }

  @override
  Future<Either<Exception, Map<EspacoEntity, List<ReservaEntity?>>>> getHistoryReservaPorEspaco({required String gestorId}) async {
    try {
      return Right(await reservaDatasource.getHistoryReservas(gestorId: gestorId));
    } catch (e) {
      return Left(Exception('Erro ao recuperar historico de reservas'));
    }
  }

  @override
  Future<Either<Exception, bool>> cancelarReserva({required String reservaId}) async {
    try {
      final reserva = await reservaDatasource.getReservaById(id: reservaId);
      final espaco = await espacoDatasource.getEspacoById(id: reserva!.espacoId);
      // Acessa o dia da reserva para alterar a situação dos horarios, tornando a reserva invalida
      // e liberando o horario para possiveis novas reservas
      espaco?.agenda[reserva.dia] = espaco.agenda[reserva.dia]!.map((key, value) {
        value.horarios = value.horarios.map((horario) {
          reserva.periodo.forEach((cadaPeriodo) {
            if (cadaPeriodo.inicio == horario.inicio) {
              horario.isReserved = false;
              horario.reservaId = null;
            }
          });
          return horario;
        }).toList();
        return MapEntry(key, value);
      });
      reserva.status = Situacao.CANCELADO.text!;
      await espacoDatasource.updateEspaco(espaco: espaco!);
      return Right(await reservaDatasource.updateReserva(reservaEntity: reserva));
    } catch (e) {
      return Left(Exception('Erro ao atualizar'));
    }
  }

  @override
  Future<Either<Exception, List<UsuarioEntity?>>> getAllGestoresReserva() async {
    try {
      return Right(await reservaDatasource.getAllGestoresReserva());
    } catch (e) {
      return Left(Exception('Erro ao listar todos gestores de reserva'));
    }
  }
}
