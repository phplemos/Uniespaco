import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uniespaco/layers/data/dto/pre_cadastro_usuario.dart';
import 'package:uniespaco/layers/domain/entities/precadastro_usuario_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

class PrecadastroFirebaseDataSource {
  final _database = FirebaseFirestore.instance.collection('precadastro');

  Future<List<PreCadastroUsuarioEntity>> getAllPrecadastro() async {
    final response = await _database.get();
    final data = response.docs.map((precadastro) {
      return PreCadastroUsuarioDto(email: precadastro['email'], userRole: precadastro['userRole'].map((userRole) => UserRole.fromMap(userRole))).toEntity();
    }).toList();
    return data;
  }

  Future<PreCadastroUsuarioEntity?> getPrecadastroByEmail({required String email}) async {
    final response = await _database.doc(email).get();
    if (response.exists) {
      return PreCadastroUsuarioDto(email: response.data()!['email'], userRole: List<UserRole>.from(response.data()!['userRole'].map((userRole) => UserRole.fromMap(userRole)))).toEntity();
    }
    return null;
  }

  Future<bool> createPrecadastro({required PreCadastroUsuarioEntity precadastro}) async {
    try {
      await _database.doc(precadastro.email).set(PreCadastroUsuarioDto.fromEntity(precadastro).toMap());
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> updatePrecadastro({required PreCadastroUsuarioEntity precadastro}) async {
    try {
      await _database.doc(precadastro.email).set(PreCadastroUsuarioDto.fromEntity(precadastro).toMap());
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> deletePrecadastro({required String id}) {
    throw UnimplementedError();
  }
}
