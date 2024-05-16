import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

abstract class EspacoRepository {
  Future<Either<Exception, List<EspacoEntity>>> getAll();

  Future<Either<Exception, EspacoEntity>> getById({required String idEspaco});

  Future<Either<Exception, bool>> save({required EspacoEntity espacoEntity});

  Future<Either<Exception, bool>> vincularGestoresEspaco({
    required DateTime dayToInit,
    required DateTime dayToEnd,
    required EspacoEntity espacoEntity,
    required Map<String, Map<String, UsuarioEntity>> gestores,
  });

  Future<Either<Exception, List<UsuarioEntity>>> getAllGestoresReserva();

  Future<Either<Exception, List<UsuarioEntity>>> getAllGestoresServico();

  Future<Either<Exception, List<EspacoEntity>>> getEspacosPorCampus({required Campus campus});

  Future<List<EspacoEntity>> getEspacosPorPesquisa({required String? query});
}
