import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uniespaco/layers/data/dto/PreCadastroUsuarioDto.dart';
import 'package:uniespaco/layers/domain/entities/precadastro_usuario_entity.dart';

class PrecadastroFirebaseDataSource {
  final _database = FirebaseFirestore.instance.collection('precadastro');

  Future<List<Map<String, dynamic>>> getAllPrecadastro() async {
    final response = await _database.get();
    final data = response.docs.map((precadastro) {
      return {precadastro.data()['email'] as String: precadastro.data()['tipoUsuario'] as String};
    }).toList();
    return data;
  }

  Future<List<Map<String, String>>> getPrecadastroByEmail({required String email}) async {
    final response = await _database.where('email', isEqualTo: email).get();
    return response.docs.map((precadastro) {
      return {precadastro['email'] as String: precadastro['tipoUsuario'] as String};
    }).toList();
  }

  Future<bool> createPrecadastro({required PreCadastroUsuarioEntity precadastro}) async {
    try {
      await _database.add(PreCadastroUsuarioDto.fromEntity(precadastro).toMap());
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> updatePrecadastro({required Map<String, String> precadastro}) {
    throw UnimplementedError();
  }

  Future<bool> deletePrecadastro({required String id}) {
    throw UnimplementedError();
  }
}
