import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';

abstract class SolicitarServicoUseCase {
  Future<Either<Exception, bool>> call({required ServicoEntity servicoEntity});
}
