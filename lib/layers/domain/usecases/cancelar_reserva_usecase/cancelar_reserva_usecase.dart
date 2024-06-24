import 'package:dartz/dartz.dart';

abstract class CancelarReservaUseCase {
  Future<Either<Exception, bool>> call({required String reservaId});
}
