import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/espaco/espaco_firebase_datasource.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/reserva/reserva_firebase_datasource.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/usuario/usuario_firebase_datasource.dart';
import 'package:uniespaco/layers/domain/entities/agenda_entity.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/reserva_repository.dart';
import 'package:uuid/uuid.dart';

class ReservaRepositoryImpl implements ReservaRepository {
  final reservaDatasource = ReservaFirebaseDataSource();
  final usuarioDatasource = UsuarioFirebaseDataSource();
  final espacoDatasource = EspacoFirebaseDataSource();

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
      Map<String, AgendaEntity> horariosPorTurno = espacoEntity!.agenda[selectedDay]!;
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
      espacoEntity.agenda[selectedDay]!.updateAll((turno, agenda) {
        // Verifica se há seleção nos horarios da manha
        if (horariosManha.isNotEmpty && turno == 'manha') {
          // Atualiza o valor da chave da noite que tem uma agendaEntity como valor
          espacoEntity.agenda[selectedDay]!.update('manha', (agendaTurno) {
            // Atualiza a lista de horarios e coloca o id do gestor caso usuario tenha marcado checkbox
            agendaTurno.horarios = agendaTurno.horarios.map((horario) {
              if (horariosManha.contains(horario)) {
                horario.reservaId = reservaEntity.id;
                horario.isReserved = true;
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
                horario.reservaId = reservaEntity.id;
                horario.isReserved = true;
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
                horario.reservaId = reservaEntity.id;
                horario.isReserved = true;
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
      final resultEspaco = await espacoDatasource.updateEspaco(espaco: espacoEntity);
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
  Future<Either<Exception, ReservaEntity?>> getById({required String idReserva}) {
    // TODO: implement getById
    throw UnimplementedError();
  }
}
