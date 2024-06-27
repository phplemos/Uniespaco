import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uniespaco/layers/data/dto/usuario_dto.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

class UsuarioFirebaseDataSource {
  final _datasource = FirebaseFirestore.instance.collection('usuario');

  Future<List<UsuarioEntity?>> getAllUsuarios() async {
    final response = await _datasource.get();
    if (response.docs.isNotEmpty) {
      final usuarios = response.docs.map((usuario) {
        final data = usuario.data();
        return UsuarioDto.fromMap(data).toEntity();
      }).toList();
      return usuarios;
    }
    return [];
  }

  Future<UsuarioEntity?> getUsuarioById({required String id}) async {
    try {
      final response = await _datasource.doc(id).get();
      if (response.data() != null) {
        return UsuarioDto.fromMap(response.data()!).toEntity();
      }
      return null;
    } catch (e) {
      throw Exception('Erro ao buscar no banco');
    }
  }

  Future<bool> createUsuario({required UsuarioEntity usuarioEntity}) async {
    try {
      final usuarioDto = UsuarioDto.fromEntity(usuarioEntity);
      await _datasource.doc(usuarioDto.id).set(usuarioDto.toMap());
      return true;
    } catch (e) {
      throw Exception('Erro ao persistir no banco');
    }
  }

  Future<bool> updateUsuario({required UsuarioEntity usuarioEntity}) async {
    try {
      final usuarioDto = UsuarioDto.fromEntity(usuarioEntity);
      await _datasource.doc(usuarioDto.id).set(usuarioDto.toMap());
      return true;
    } catch (e) {
      throw Exception('Erro ao persistir no banco');
    }
  }

  Future<bool> deleteUsuario({required String id}) {
    throw UnimplementedError();
  }
}
