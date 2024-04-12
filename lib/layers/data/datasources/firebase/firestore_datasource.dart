import 'package:dartz/dartz.dart';

abstract class FirestoreDataSource {
  Future<Either<Exception, dynamic>> get();

  Future<Either<Exception, dynamic>> getBy(dynamic context);

  Future<Either<Exception, dynamic>> post(dynamic obj);
}
