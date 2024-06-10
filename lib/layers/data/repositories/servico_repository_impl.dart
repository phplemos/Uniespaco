import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/servico_repository.dart';

class ServicoRepositoryImpl implements ServicoRepository {
  final db = FirebaseFirestore.instance;

  @override
  Future<Either<Exception, Map<DateTime, List<ServicoEntity?>>>> getAll({required UsuarioEntity usuario}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, bool>> save({required ServicoEntity servicoEntity}) async {
    try {
      return const Right(true);
    } catch (e) {
      return Left(Exception('Erro ao persistir no banco'));
    }
  }

  @override
  Future<Either<Exception, Map<DateTime, List<ServicoEntity?>>>> getByDay({required UsuarioEntity usuario, required DateTime day}) {
    // TODO: implement getByDay
    throw UnimplementedError();
  }
}
