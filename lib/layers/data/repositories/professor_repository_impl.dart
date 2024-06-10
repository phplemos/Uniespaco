// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:uniespaco/layers/data/datasources/remote/firebase/usuario/usuario_firebase_datasource.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/professor_repository.dart';

class ProfessorRepositoryImpl implements ProfessorRepository {
  UsuarioFirebaseDataSource usuarioDatasource;

  ProfessorRepositoryImpl({
    required this.usuarioDatasource,
  });

  @override
  Future<Either<Exception, List<UsuarioEntity?>>> getAll() async {
    try {
      final usuarios = await usuarioDatasource.getAllUsuarios();
      final professores = usuarios.where((usuario) => usuario!.tipoUsuario == 'professor').toList();
      return Right(professores);
    } catch (e) {
      throw Exception('Erro ao buscar os setores');
    }
  }

  @override
  Future<Either<Exception, UsuarioEntity?>> getById({required String id}) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, bool>> save({required UsuarioEntity professorEntity}) {
    // TODO: implement save
    throw UnimplementedError();
  }
}
