import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/reserva_repository.dart';

class ReservaRepositoryImpl implements ReservaRepository {
  final db = FirebaseFirestore.instance;


  @override
  Future<Either<Exception, Map<DateTime, List<ReservaEntity>>>> getAll({required UsuarioEntity usuario}) async {
    try {
      return const Right({});
    } catch (e) {
      return Left(Exception('Erro ao recuperar todas reservas'));
    }
  }

  @override
  Future<Either<Exception, bool>> save({required ReservaEntity reservaEntity}) async {
    try {
      
      return const Right(true);
    } catch (e) {
      return Left(Exception('Erro ao persistir no banco'));
    }
  }

  @override
  Future<Either<Exception, Map<DateTime, List<ReservaEntity>>>> getByDay({required UsuarioEntity usuario, required DateTime day}) {
    // TODO: implement getByDay
    throw UnimplementedError();
  }
}
