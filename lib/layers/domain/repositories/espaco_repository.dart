import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/agenda_entity.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

abstract class EspacoRepository {
  Future<Either<Exception, List<EspacoEntity?>>> getAll();

  Future<Either<Exception, EspacoEntity?>> getById({required String idEspaco});

  Future<Either<Exception, bool>> save({required EspacoEntity espacoEntity});

  Future<Either<Exception, bool>> favoritarEspaco({required List<EspacoEntity>? espacosFavoritados, required UsuarioEntity usuarioEntity});

  Future<Either<Exception, bool>> desfavoritarEspaco({required List<EspacoEntity>? espacosFavoritados, required UsuarioEntity usuarioEntity});

  Future<Either<Exception, bool>> vincularGestoresEspaco({required EspacoEntity espacoEntity, required Map<String, Map<String, AgendaEntity>> newAgenda});

  Future<Either<Exception, List<EspacoEntity?>>> getEspacosFavoritados({required String usuarioId});

  Future<Either<Exception, List<UsuarioEntity?>>> getAllGestoresReserva();

  Future<Either<Exception, List<UsuarioEntity?>>> getAllGestoresServico();

  Future<Either<Exception, List<EspacoEntity?>>> getEspacosPorCampus({required Campus campus});
}
