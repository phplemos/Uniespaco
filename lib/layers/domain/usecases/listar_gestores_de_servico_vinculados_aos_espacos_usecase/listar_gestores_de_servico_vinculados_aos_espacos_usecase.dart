import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

abstract class ListarGestoresDeServicoVinculadosAosEspacosUseCase {
  Future<Either<Exception, Map<EspacoEntity, List<UsuarioEntity?>>>> call();
}
