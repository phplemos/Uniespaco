import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uniespaco/layers/data/datasources/datasource.dart';

class FirestoreDataSourceImpl implements DataSource {
  final db = FirebaseFirestore.instance;

  @override
  Future<List<Map<String, dynamic>>> get({required String tabela}) async {
    try {
      final response = await db.collection(tabela).get();
      final result = response.docs.map((e) => e.data()).toList();
      return result;
    } catch (e) {
      throw Exception('Erro ao recuperar os espaços no banco');
    }
  }

  @override
  Future<Map<String, dynamic>> getItemById({required String tabela, required String itemId}) async {
    try {
      final response = await db.collection(tabela).doc(itemId).get();
      return response.data() ?? {};
    } catch (e) {
      throw Exception('Erro ao recuperar os espaços no banco');
    }
  }

  @override
  Future<List<Map<String, dynamic>>> getItensByCampoEquals({required String tabela, required String campo, required Object obj}) {
    // TODO: implement getItensByCampoEquals
    throw UnimplementedError();
  }

  @override
  Future<bool> save({required String tabela, required Map<String, dynamic> item}) async {
    try {
      // Verifica se tem um id ja especificado
      if (item['id'] != null) {
        await db.collection(tabela).doc(item['id']).set(item);
      } else {
        var id = db.collection(tabela).doc().id;
        await db.collection(tabela).doc(id).set(item);
      }
      return true;
    } catch (e) {
      throw Exception('Erro ao persistir no banco');
    }
  }

  @override
  Future<bool> update({required String tabela, required Map<String, dynamic> item}) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<bool> delete({required String tabela, required String itemId}) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
