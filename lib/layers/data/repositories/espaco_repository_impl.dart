import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/espaco_repository.dart';

class EspacoRepositoryImpl implements EspacoRepository {
  
  @override
  Future<Either<Exception, List<EspacoEntity>>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, List<UsuarioEntity>>> getAllGestoresReserva() {
    // TODO: implement getAllGestoresReserva
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, List<UsuarioEntity>>> getAllGestoresServico() {
    // TODO: implement getAllGestoresServico
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, EspacoEntity>> getById({required String idEspaco}) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, bool>> save({required EspacoEntity espacoEntity}) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, bool>> vincularGestorReservaEspaco(
      {required UsuarioEntity gestorReserva,
      required EspacoEntity espacoEntity}) {
    // TODO: implement vincularGestorReservaEspaco
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, bool>> vincularGestorServicoEspaco(
      {required UsuarioEntity gestorServico,
      required EspacoEntity espacoEntity}) {
    // TODO: implement vincularGestorServicoEspaco
    throw UnimplementedError();
  }
}
