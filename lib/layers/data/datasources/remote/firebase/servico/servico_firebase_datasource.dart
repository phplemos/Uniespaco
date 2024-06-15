import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/espaco/espaco_firebase_datasource.dart';
import 'package:uniespaco/layers/data/dto/servico_dto.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';

class ServicoFirebaseDataSource {
  final _database = FirebaseFirestore.instance.collection('servico');
  final _espacoDatasource = EspacoFirebaseDataSource();

  Future<Map<EspacoEntity, List<ServicoEntity?>>> getAllServicosFromUsuarioGestor({required String solicitanteId}) async {
    try {
      // Variavel que vai armazenar o resultado
      final Map<EspacoEntity, List<ServicoEntity>> servicosPorEspaco = {};
      // Busca todos os espacos que o usuario é gestor
      final List<EspacoEntity?> espacoGeridos = await _espacoDatasource.getEspacoByGestorServico(gestorId: solicitanteId);
      // Percorre cada espaço, buscando se tem reservas com o espaco Vinculado
      await Future.forEach(espacoGeridos, (espaco) async {
        if (espaco != null) {
          final responseServico = await _database.where('espacoId', isEqualTo: espaco.id).get();
          // recebe a lista de reservas com base no id do espaco e converte para uma lista de entidade
          List<ServicoEntity> servicos = responseServico.docs.map((snapshot) => ServicoDto.fromMap(snapshot.data()).toEntity()).toList();
          // atualiza o resultado colocando como chave o espaco e como valor a lista de reservas referente ao espaco
          servicosPorEspaco[espaco] = servicos;
        }
      });
      return servicosPorEspaco;
    } catch (e) {
      throw Exception('Erro ao recuperar as reservas');
    }
  }

  Future<List<ServicoEntity?>> getAllServicosFromUsuario({required String solicitanteId}) async {
    try {
      final response = await _database.where(('solicitanteId', isEqualTo: solicitanteId)).get();
      List<ServicoEntity?> servicos = response.docs.map((snapshot) {
        if (snapshot.data().isNotEmpty) {
          return ServicoDto.fromMap(snapshot.data()).toEntity();
        }
      }).toList();

      return servicos;
    } catch (e) {
      throw Exception('Erro ao recuperar as reservas');
    }
  }

  Future<List<ServicoEntity?>> getAllServicos() async {
    try {
      final response = await _database.get();
      List<ServicoEntity?> servicos = response.docs.map((snapshot) {
        if (snapshot.data().isNotEmpty) {
          return ServicoDto.fromMap(snapshot.data()).toEntity();
        }
      }).toList();
      return servicos;
    } catch (e) {
      throw Exception('Erro ao recuperar as Servicos');
    }
  }

  Future<ServicoEntity?> getServicoById({required String id}) async {
    try {
      final response = await _database.doc(id).get();
      if (response.data()!.isNotEmpty) {
        return ServicoDto.fromMap(response.data()!).toEntity();
      }
      return null;
    } catch (e) {
      throw Exception('Erro ao recuperar a Servico pelo Id ');
    }
  }

  Future<bool> createServico({required ServicoEntity servicoEntity}) async {
    try {
      await _database.doc(servicoEntity.id).set(ServicoDto.fromEntity(servicoEntity).toMap());
      return true;
    } catch (e) {
      throw Exception('Erro ao persistir a Servico');
    }
  }

  Future<bool> updateServico({required ServicoEntity servicoEntity}) {
    throw UnimplementedError();
  }

  Future<bool> deleteServico({required String id}) {
    throw UnimplementedError();
  }
}
