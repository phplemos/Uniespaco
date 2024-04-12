import 'package:dartz/dartz.dart';

abstract class EfetuarLogoutUseCase {
  Future<Either<Exception, bool>> call();
}
