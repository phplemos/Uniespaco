import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/espaco/espaco_firebase_datasource.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/usuario/usuario_firebase_datasource.dart';
import 'package:uniespaco/layers/domain/entities/agenda_entity.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/espaco_repository.dart';

class EspacoRepositoryImpl implements EspacoRepository {
  final espacoDatasource = EspacoFirebaseDataSource();
  final usuarioDatasource = UsuarioFirebaseDataSource();

  @override
  Future<Either<Exception, List<EspacoEntity?>>> getAll() async {
    try {
      final result = await espacoDatasource.getAllEspacos();
      return Right(result);
    } catch (e) {
      return Left(Exception('Erro ao serializar o espaco'));
    }
  }

  @override
  Future<Either<Exception, EspacoEntity?>> getById({required String idEspaco}) async {
    try {
      // Busca espaço por id
      final result = await espacoDatasource.getEspacoById(id: idEspaco);
      return Right(result);
    } catch (e) {
      return Left(Exception('Erro ao serializar o espaco'));
    }
  }

  @override
  Future<Either<Exception, bool>> save({required EspacoEntity espacoEntity}) async {
    try {
      final result = await espacoDatasource.createEspaco(espacoEntity: espacoEntity);
      return Right(result);
    } catch (e) {
      return Left(Exception('Erro ao cadastrar o espaço'));
    }
  }

  @override
  Future<Either<Exception, List<EspacoEntity?>>> getEspacosPorCampus({required Campus campus}) async {
    try {
      final result = await espacoDatasource.getAllEspacos();
      final espacosCampus = result.where((espaco) => espaco!.localizacao.campus == campus.text).toList();
      return Right(espacosCampus);
    } catch (e) {
      return Left(Exception('Erro ao serializar o espaco'));
    }
  }

  @override
  Future<Either<Exception, List<EspacoEntity?>>> getEspacosFavoritados({required String usuarioId}) async {
    try {
      final usuario = await usuarioDatasource.getUsuarioById(id: usuarioId);
      List<EspacoEntity?> espacosFavoritos = [];
      if (usuario != null) {
        Future.forEach(usuario.espacosFavoritados, (espacoId) async {
          if (espacoId != null) {
            espacosFavoritos.add(await espacoDatasource.getEspacoById(id: espacoId));
          }
        });
        return Right(espacosFavoritos);
      }
      return const Right([]);
    } catch (e) {
      return Left(Exception('Erro ao recuperar os espacos favoritos do usuario'));
    }
  }

  @override
  Future<Either<Exception, bool>> favoritarEspaco({required List<EspacoEntity?> espacosFavoritados, required UsuarioEntity usuarioEntity}) async {
    try {
      final usuario = await usuarioDatasource.getUsuarioById(id: usuarioEntity.id);
      final List<String> idEspacosFavoritados = [];
      if (usuario != null) {
        espacosFavoritados.map((espaco) {
          if (espaco != null) {
            idEspacosFavoritados.add(espaco.id);
          }
        });
        usuario.espacosFavoritados?.addAll(idEspacosFavoritados);
        var response = await usuarioDatasource.updateUsuario(usuarioEntity: usuario);
        return Right(response);
      }
      return const Right(false);
    } catch (e) {
      return Left(Exception('Erro ao favoritar espacos'));
    }
  }

  @override
  Future<Either<Exception, bool>> desfavoritarEspaco({required List<EspacoEntity?> espacosFavoritados, required UsuarioEntity usuarioEntity}) async {
    try {
      final usuario = await usuarioDatasource.getUsuarioById(id: usuarioEntity.id);
      final List<String> idEspacosFavoritados = [];
      if (usuario != null) {
        espacosFavoritados.map((espaco) {
          if (espaco != null) {
            idEspacosFavoritados.add(espaco.id);
          }
        });
        usuario.espacosFavoritados?.addAll(idEspacosFavoritados);
        var response = await usuarioDatasource.updateUsuario(usuarioEntity: usuario);
        return Right(response);
      }
      return const Right(false);
    } catch (e) {
      return Left(Exception('Erro ao favoritar espacos'));
    }
  }

  @override
  Future<Either<Exception, List<UsuarioEntity>>> getAllGestoresReserva() async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, List<UsuarioEntity>>> getAllGestoresServico() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, bool>> vincularGestoresEspaco({required UsuarioEntity usuario, required EspacoEntity espacoEntity, required Map<DateTime, Map<String, AgendaEntity>> newAgenda}) async {
    try {
      espacoEntity.agenda = newAgenda;
      await espacoDatasource.updateEspaco(espaco: espacoEntity);
      await usuarioDatasource.updateUsuario(usuarioEntity: usuario);
      return const Right(true);
    } catch (e) {
      return Left(Exception('Erro ao vincular os gestores'));
    }
  }

  @override
  Future<Either<Exception, bool>> update({required EspacoEntity espacoEntity}) async {
    try {
      final result = await espacoDatasource.updateEspaco(espaco: espacoEntity);
      return Right(result);
    } catch (e) {
      return Left(Exception('Erro ao cadastrar o espaço'));
    }
  }

  @override
  Future<Either<Exception, Map<EspacoEntity, List<UsuarioEntity?>>>> getAllGestoresReservaEspaco() async {
    try {
      final result = await espacoDatasource.getAllGestoresReservaPorEspaco();
      return Right(result);
    } catch (e) {
      return Left(Exception('Erro ao cadastrar o espaço'));
    }
  }
}
