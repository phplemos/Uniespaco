abstract class DataSource {
  Future<List<Map<String, dynamic>>> get({required String tabela});

  Future<Map<String, dynamic>> getItemById({required String tabela, required String itemId});

  Future<List<Map<String, dynamic>>> getItensByCampo({required String tabela, required String campo, required String referencia});

  Future<bool> save({required String tabela, required Map<String, dynamic> item});

  Future<bool> update({required String tabela, required Map<String, dynamic> item});

  Future<bool> delete({required String tabela, required String itemId});
}
