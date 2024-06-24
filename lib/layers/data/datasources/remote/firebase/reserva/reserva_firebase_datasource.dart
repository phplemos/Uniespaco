import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/espaco/espaco_firebase_datasource.dart';
import 'package:uniespaco/layers/data/dto/reserva_dto.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';

class ReservaFirebaseDataSource {
  final _database = FirebaseFirestore.instance.collection('reserva');
  final _espacoDatasource = EspacoFirebaseDataSource();

  Future<Map<EspacoEntity, List<ReservaEntity?>>> getAllReservasFromUsuarioGestor({required String gestorId}) async {
    try {
      // Variavel que vai armazenar o resultado
      final Map<EspacoEntity, List<ReservaEntity>> reservasPorEspaco = {};
      // Busca todos os espacos que o usuario é gestor
      final List<EspacoEntity?> espacoGeridos = await _espacoDatasource.getEspacoByGestorReserva(gestorId: gestorId);
      // Percorre cada espaço, buscando se tem reservas com o espaco Vinculado
      await Future.forEach(espacoGeridos, (espaco) async {
        if (espaco != null) {
          final responseReserva = await _database.where('espacoId', isEqualTo: espaco.id).get();
          // recebe a lista de reservas com base no id do espaco e converte para uma lista de entidade
          List<ReservaEntity> reserva = responseReserva.docs.map((snapshot) => ReservaDto.fromMap(snapshot.data()).toEntity()).toList();
          // atualiza o resultado colocando como chave o espaco e como valor a lista de reservas referente ao espaco
          reservasPorEspaco[espaco] = reserva.where((reserva) => theDayHasNotPassed(dia: reserva.dia, other: DateTime.now())).toList();
        }
      });
      return reservasPorEspaco;
    } catch (e) {
      throw Exception('Erro ao recuperar as reservas');
    }
  }

  Future<Map<EspacoEntity, List<ReservaEntity?>>> getHistoryReservas({required String gestorId}) async {
    try {
      // Variavel que vai armazenar o resultado
      final Map<EspacoEntity, List<ReservaEntity>> reservasPorEspaco = {};
      // Busca todos os espacos que o usuario é gestor
      final List<EspacoEntity?> espacoGeridos = await _espacoDatasource.getEspacoByGestorReserva(gestorId: gestorId);
      // Percorre cada espaço, buscando se tem reservas com o espaco Vinculado
      await Future.forEach(espacoGeridos, (espaco) async {
        if (espaco != null) {
          final responseReserva = await _database.where('espacoId', isEqualTo: espaco.id).get();
          // recebe a lista de reservas com base no id do espaco e converte para uma lista de entidade
          List<ReservaEntity> reserva = responseReserva.docs.map((snapshot) => ReservaDto.fromMap(snapshot.data()).toEntity()).toList();
          // atualiza o resultado colocando como chave o espaco e como valor a lista de reservas referente ao espaco
          reservasPorEspaco[espaco] = reserva;
        }
      });
      return reservasPorEspaco;
    } catch (e) {
      throw Exception('Erro ao recuperar o historico das reservas');
    }
  }

  Future<List<ReservaEntity?>> getAllReservasFromUsuario({required String solicitanteId}) async {
    try {
      final response = await _database.where('solicitanteId', isEqualTo: solicitanteId).get();
      List<ReservaEntity> reservas = response.docs.map((snapshot) => ReservaDto.fromMap(snapshot.data()).toEntity()).toList();

      return reservas;
    } catch (e) {
      throw Exception('Erro ao recuperar as reservas');
    }
  }

  Future<List<ReservaEntity?>> getAllReservas() async {
    try {
      final response = await _database.get();
      List<ReservaEntity?> reservas = response.docs.map((snapshot) {
        if (snapshot
            .data()
            .isNotEmpty) {
          return ReservaDto.fromMap(snapshot.data()).toEntity();
        }
      }).toList();
      return reservas;
    } catch (e) {
      throw Exception('Erro ao recuperar as reservas');
    }
  }

  Future<ReservaEntity?> getReservaById({required String id}) async {
    try {
      final response = await _database.doc(id).get();
      if (response.data()!.isNotEmpty) {
        return ReservaDto.fromMap(response.data()!).toEntity();
      }
      return null;
    } catch (e) {
      throw Exception('Erro ao recuperar a reserva pelo Id ');
    }
  }

  Future<bool> createReserva({required ReservaEntity reservaEntity}) async {
    try {
      var reservaMap = ReservaDto.fromEntity(reservaEntity).toMap();
      await _database.doc(reservaEntity.id).set(reservaMap);
      return true;
    } catch (e) {
      throw Exception('Erro ao persistir a reserva');
    }
  }

  Future<bool> updateReserva({required ReservaEntity reservaEntity}) async {
    try {
      var reservaMap = ReservaDto.fromEntity(reservaEntity).toMap();
      await _database.doc(reservaEntity.id).set(reservaMap);
      return true;
    } catch (e) {
      throw Exception('Erro ao persistir a reserva');
    }
  }

  Future<bool> deleteReserva({required String id}) {
    throw UnimplementedError();
  }

  bool theDayHasNotPassed({required DateTime dia, required DateTime other}) {
    return dia.year >= other.year && dia.month >= other.month && dia.day >= other.day;
  }
}
