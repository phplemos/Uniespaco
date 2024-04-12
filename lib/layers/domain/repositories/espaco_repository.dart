import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

abstract class EspacoRepository {
  Future<Either<Exception, List<EspacoEntity>>> getAll();

  Future<Either<Exception, EspacoEntity>> getById({required String idEspaco});

  Future<Either<Exception, bool>> save({required EspacoEntity espacoEntity});

  Future<Either<Exception, bool>> vincularGestorServicoEspaco(
      {required UsuarioEntity gestorServico,
      required EspacoEntity espacoEntity});

  Future<Either<Exception, bool>> vincularGestorReservaEspaco(
      {required UsuarioEntity gestorReserva,
      required EspacoEntity espacoEntity});

  Future<Either<Exception, List<UsuarioEntity>>> getAllGestoresReserva();

  Future<Either<Exception, List<UsuarioEntity>>> getAllGestoresServico();
}
