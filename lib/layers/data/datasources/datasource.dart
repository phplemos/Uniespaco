abstract class DataSource {
  Future<List<Map<String, dynamic>>> get({required String tabela});

  Future<Map<String, dynamic>> getItemById({required String tabela, required String itemId});

  /*Future<List<Map<String, dynamic>>> getItemByCampo({required String tabela, required String itemId, required String campo});*/

  Future<List<Map<String, dynamic>>> getItensByCampoEspecifico({required String tabela, required String campo, required String referencia});

  /* Future<List<Map<String, dynamic>>> pesquisaStream({required String tabela, required String campo, required String query});*/

  Future<bool> save({required String tabela, required Map<String, dynamic> item});

  Future<bool> update({required String tabela, required Map<String, dynamic> item});

  Future<bool> delete({required String tabela, required String itemId});
}
