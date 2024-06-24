import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/situacao_solicitacao_enum.dart';

abstract class AlterarSituacaoReservaUsecase {
  Future<Either<Exception, bool>> call({required String reservaId, required Situacao situacao});
}
