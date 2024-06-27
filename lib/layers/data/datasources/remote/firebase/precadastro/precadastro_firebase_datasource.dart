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
    final response = await _database.where('email', isEqualTo: email).get();
    final result = response.docs.isNotEmpty
        ? response.docs
            .map((precadastro) {
              return PreCadastroUsuarioDto(email: precadastro.data()['email'], userRole: List<UserRole>.from(precadastro.data()['userRole'].map((userRole) => UserRole.fromMap(userRole)))).toEntity();
            })
            .toList()
            .first
        : null;
    return result;
  }

  Future<bool> createPrecadastro({required PreCadastroUsuarioEntity precadastro}) async {
    try {
      await _database.add(PreCadastroUsuarioDto.fromEntity(precadastro).toMap());
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> updatePrecadastro({required PreCadastroUsuarioEntity precadastro}) async {
    try {
      var response = await _database.where('email', isEqualTo: precadastro.email).get();
      await _database.doc(response.docs.first.id).set(PreCadastroUsuarioDto.fromEntity(precadastro).toMap());
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> deletePrecadastro({required String id}) {
    throw UnimplementedError();
  }
}
