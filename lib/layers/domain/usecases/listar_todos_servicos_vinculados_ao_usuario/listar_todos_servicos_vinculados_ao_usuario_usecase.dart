import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';

abstract class ListarTodosServicosVinculadosAoUsuarioUsecase {
  Future<Either<Exception, List<ServicoEntity?>>> call({required String usuarioId});
}
