import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/espaco/espaco_firebase_datasource.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/servico/servico_firebase_datasource.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/usuario/usuario_firebase_datasource.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/servico_repository.dart';
import 'package:uuid/uuid.dart';

class ServicoRepositoryImpl implements ServicoRepository {
  final servicoDatasource = ServicoFirebaseDataSource();
  final usuarioDatasource = UsuarioFirebaseDataSource();
  final espacoDatasource = EspacoFirebaseDataSource();

  @override
  Future<Either<Exception, Map<DateTime, List<ServicoEntity?>>>> getAll({required UsuarioEntity usuario}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, bool>> save({required ServicoEntity servicoEntity}) async {
    try {
      const uuid = Uuid();
      servicoEntity.id = uuid.v4();
      final resultServico = await servicoDatasource.createServico(servicoEntity: servicoEntity);
      return Right(resultServico);
    } catch (e) {
      return Left(Exception('Erro ao cadastrar o espaço'));
    }
  }

  @override
  Future<Either<Exception, Map<DateTime, List<ServicoEntity?>>>> getByDay({required UsuarioEntity usuario, required DateTime day}) {
    // TODO: implement getByDay
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, List<ServicoEntity?>>> getAllFromUsuario({required String usuarioId}) async {
    try {
      return Right(await servicoDatasource.getAllServicosFromUsuario(solicitanteId: usuarioId));
    } catch (e) {
      return Left(Exception('Erro ao recuperar todas reservas'));
    }
  }

  @override
  Future<Either<Exception, Map<EspacoEntity, List<ServicoEntity?>>>> getAllFromUsuarioGestor({required String usuarioId}) async {
    try {
      return Right(await servicoDatasource.getAllServicosFromUsuarioGestor(solicitanteId: usuarioId));
    } catch (e) {
      return Left(Exception('Erro ao recuperar todas reservas'));
    }
  }

  @override
  Future<Either<Exception, Map<EspacoEntity, List<UsuarioEntity?>>>> getAllGestoresServicoEspaco() async {
    try {
      return Right(await espacoDatasource.getAllGestoresServicoPorEspaco());
    } catch (e) {
      return Left(Exception('Erro ao recuperar todas reservas'));
    }
  }

  @override
  Future<Either<Exception, ServicoEntity?>> getById({required String idServico}) {
    // TODO: implement getById
    throw UnimplementedError();
  }
}
