import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uniespaco/core/horario_list_initiializer/agenda_initializer.dart';
import 'package:uniespaco/layers/data/dto/espaco_dto.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';

class EspacoFirebaseDataSource {
  final _database = FirebaseFirestore.instance.collection('espaco');

  Future<List<EspacoEntity?>> getAllEspacos() async {
    final response = await _database.get();
    List<EspacoEntity?> listEspacos = response.docs.map((espaco) {
      return EspacoDto.fromMap(espaco.data()).toEntity();
    }).toList();
    return listEspacos;
  }

  Future<EspacoEntity?> getEspacoById({required String id}) async {
    final response = await _database.doc(id).get();
    if (response.data() != null) {
      return EspacoDto.fromMap(response.data()!).toEntity();
    }
    return null;
  }

  Future<bool> createEspaco({required EspacoEntity espacoEntity}) async {
    try {
      final espacoMap = EspacoDto.fromEntity(espacoEntity).toMap();
      espacoMap['agenda'] = AgendaInitializer.createAgenda(dayToInit: DateTime.now());
      await _database.doc(espacoMap['id']).set(espacoMap);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> updateEspaco({required EspacoEntity espaco}) async {
    try {
      await _database.doc(espaco.id).set(EspacoDto.fromEntity(espaco).toMap());
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> deleteEspaco({required String id}) {
    throw UnimplementedError();
  }
}
