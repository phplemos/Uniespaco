import 'package:cloud_firestore/cloud_firestore.dart';


class FirestoreDataSource {
  final db = FirebaseFirestore.instance;

  Future<List<Map<String, dynamic>>> get({required String tabela}) async {
    try {
      final response = await db.collection(tabela).get();
      final result = response.docs.map((e) => e.data()).toList();
      return result;
    } catch (e) {
      throw Exception('Erro ao recuperar os dados no banco');
    }
  }

  Future<Map<String, dynamic>> getItemById({required String tabela, required String itemId}) async {
    try {
      final response = await db.collection(tabela).doc(itemId).get();
      return response.data() ?? {};
    } catch (e) {
      throw Exception('Erro ao recuperar o item no banco');
    }
  }

  /* @override
  Future<List<Map<String, dynamic>>> getItensByCampo({required String tabela, required String itemId, required String campo}) async {
    try {
      final response = await db.collection(tabela).doc(itemId).get();
      return response.docs.map((e) => e.data()).toList();
    } catch (e) {
      throw Exception('Erro ao recuperar os dados no banco');
    }
  }
*/
  Future<List<Map<String, dynamic>>> getItensByCampoEspecifico({required String tabela, required String campo, required String referencia}) async {
    try {
      final response = await db.collection(tabela).where(campo, isEqualTo: referencia).get();
      return response.docs.map((e) => e.data()).toList();
    } catch (e) {
      throw Exception('Erro ao recuperar os dados no banco');
    }
  }

  Future<bool> save({required String tabela, required Map<String, dynamic> item}) async {
    try {
      // Verifica se tem um id ja especificado
      if (item['id'] != null && item['id'] != '') {
        await db.collection(tabela).doc(item['id'] as String).set(item);
      } else {
        var id = db.collection(tabela).doc().id;
        await db.collection(tabela).doc(id).set(item);
      }
      return true;
    } catch (e) {
      throw Exception('Erro ao persistir no banco');
    }
  }

  Future<bool> update({required String tabela, required Map<String, dynamic> item}) async {
    try {
      await db.collection(tabela).doc(item['id']).set(item);
      return true;
    } catch (e) {
      throw Exception('Erro ao atualizar o item no banco');
    }
  }

  Future<bool> delete({required String tabela, required String itemId}) async {
    try {
      await db.collection(tabela).doc(itemId).delete();
      return true;
    } catch (e) {
      throw Exception('Erro ao excluir o item no banco');
    }
  }
}
