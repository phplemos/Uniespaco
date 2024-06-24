import 'package:dartz/dartz.dart';

abstract class CancelarServicoUseCase {
  Future<Either<Exception, bool>> call({required String servicoId});
}
