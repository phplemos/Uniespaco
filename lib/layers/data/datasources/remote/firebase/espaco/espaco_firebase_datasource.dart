import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uniespaco/core/horario_list_initiializer/agenda_initializer.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/usuario/usuario_firebase_datasource.dart';
import 'package:uniespaco/layers/data/dto/espaco_dto.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

class EspacoFirebaseDataSource {
  final _database = FirebaseFirestore.instance.collection('espaco');
  final _usuarioDatasource = UsuarioFirebaseDataSource();

  Future<Map<EspacoEntity, List<UsuarioEntity?>>> getAllGestoresReservaPorEspaco() async {
    try {
      // Variavel que vai armazenar o resultado
      final Map<EspacoEntity, List<UsuarioEntity?>> gestoresReservaPorEspaco = {};
      // Recupera os espacos e converte para uma lista de EspacoEntity
      final responseEspacos = await _database.get();
      final List<EspacoEntity?> espacos = responseEspacos.docs.map((espaco) => EspacoDto.fromMap(espaco.data()).toEntity()).toList();

      // Faz um loop assincrono, buscando o id de cada gestor dos horarios do espaco
      await Future.forEach(espacos, (espaco) async {
        final List<String> idGestores = [];
        final List<UsuarioEntity?> gestores = [];
        if (espaco != null) {
          espaco.agenda.forEach((key, value) {
            value.forEach((key, value) {
              value.horarios.forEach((horario) {
                if (horario.gestorReserva != null) {
                  idGestores.contains(horario.gestorReserva) ? null : idGestores.add(horario.gestorReserva!);
                }
              });
            });
          });
          // Converte a lista de ids para UsuarioEntitys
          await Future.forEach(idGestores, (idGestor) async {
            UsuarioEntity? usuario = await _usuarioDatasource.getUsuarioById(id: idGestor);
            if (usuario != null) {
              gestores.add(usuario);
            }
          });
          // Vincula o espaco com a lista de usuarios gestores
          gestoresReservaPorEspaco[espaco] = gestores;
        }
      });
      return gestoresReservaPorEspaco;
    } catch (e) {
      throw Exception('Erro ao recuperar as reservas');
    }
  }

  Future<Map<EspacoEntity, List<UsuarioEntity?>>> getAllGestoresServicoPorEspaco() async {
    try {
      // Variavel que vai armazenar o resultado
      final Map<EspacoEntity, List<UsuarioEntity?>> gestoresServicoPorEspaco = {};
      // Recupera os espacos e converte para uma lista de EspacoEntity
      final responseEspacos = await _database.get();
      final List<EspacoEntity?> espacos = responseEspacos.docs.map((espaco) => EspacoDto.fromMap(espaco.data()).toEntity()).toList();

      // Faz um loop assincrono, buscando o id de cada gestor dos horarios do espaco
      await Future.forEach(espacos, (espaco) async {
        final List<String> idGestores = [];
        final List<UsuarioEntity?> gestores = [];
        if (espaco != null) {
          espaco.agenda.forEach((key, value) {
            value.forEach((key, value) {
              value.horarios.forEach((horario) {
                if (horario.gestorServico != null) {
                  idGestores.contains(horario.gestorServico) ? null : idGestores.add(horario.gestorServico!);
                }
              });
            });
          });
          // Converte a lista de ids para UsuarioEntitys
          await Future.forEach(idGestores, (idGestor) async {
            UsuarioEntity? usuario = await _usuarioDatasource.getUsuarioById(id: idGestor);
            if (usuario != null) {
              gestores.add(usuario);
            }
          });
          // Vincula o espaco com a lista de usuarios gestores
          gestoresServicoPorEspaco[espaco] = gestores;
        }
      });
      return gestoresServicoPorEspaco;
    } catch (e) {
      throw Exception('Erro ao recuperar as reservas');
    }
  }

  Future<List<EspacoEntity?>> getEspacoByGestorReserva({required String gestorId}) async {
    List<EspacoEntity?> espacosGeridos = [];
    var response = await _database.get();
    response.docs.forEach((QueryDocumentSnapshot espacoMap) {
      EspacoEntity espaco = EspacoDto.fromMap(espacoMap.data() as Map<String, dynamic>).toEntity();
      espaco.agenda.forEach((key, value) {
        value.forEach((key, value) {
          value.horarios.forEach((horario) {
            if (horario.gestorReserva != null && horario.gestorReserva == gestorId) {
              espacosGeridos.contains(espaco) ? null : espacosGeridos.add(espaco);
            }
          });
        });
      });
    });
    return espacosGeridos;
  }

  Future<List<EspacoEntity?>> getEspacoByGestorServico({required String gestorId}) async {
    List<EspacoEntity?> espacosGeridos = [];
    var response = await _database.get();
    response.docs.forEach((QueryDocumentSnapshot espacoMap) {
      EspacoEntity espaco = EspacoDto.fromMap(espacoMap.data() as Map<String, dynamic>).toEntity();
      espaco.agenda.forEach((key, value) {
        value.forEach((key, value) {
          value.horarios.forEach((horario) {
            if (horario.gestorServico != null && horario.gestorServico == gestorId) {
              espacosGeridos.contains(espaco) ? null : espacosGeridos.add(espaco);
            }
          });
        });
      });
    });
    return espacosGeridos;
  }

  Future<List<EspacoEntity?>> getAllEspacos() async {
    try {
      final response = await _database.get();
      List<EspacoEntity?> listEspacos = response.docs.map((espaco) {
        return EspacoDto.fromMap(espaco.data()).toEntity();
      }).toList();
      return listEspacos;
    } catch (e) {
      throw Exception('Erro ao buscar os espacos no banco');
    }
  }

  Future<EspacoEntity?> getEspacoById({required String id}) async {
    try {
      final response = await _database.doc(id).get();
      if (response.data() != null) {
        return EspacoDto.fromMap(response.data()!).toEntity();
      }
      return null;
    } catch (e) {
      throw Exception('Erro ao buscar o espaco pelo id no banco');
    }
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
