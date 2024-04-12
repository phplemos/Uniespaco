import 'package:dartz/dartz.dart';

abstract class FirebaseDataSource {
  Future<Either<Exception, bool>> login();

  Future<Either<Exception, bool>> logout();
}
