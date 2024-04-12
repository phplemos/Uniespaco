import 'package:dartz/dartz.dart';

abstract class EfetuarLoginUseCase {
  Future<Either<Exception, bool>> call();
}
