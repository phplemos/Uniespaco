import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';
import 'package:uniespaco/layers/domain/entities/situacao_solicitacao_enum.dart';

abstract class AlterarSituacaoServicoUsecase {
  Future<Either<Exception, bool>> call({required String servicoId, required Situacao situacao, required List<HorarioEntity?> periodo,  required DateTime dia});
}
