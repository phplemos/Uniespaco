import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';

abstract class ConsultarServicoUsecase {
  Future<Either<Exception, ServicoEntity?>> call({required String idServico});
}
