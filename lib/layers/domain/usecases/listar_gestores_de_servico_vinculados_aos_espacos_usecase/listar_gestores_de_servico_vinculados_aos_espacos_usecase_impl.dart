import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/espaco_repository.dart';
import 'package:uniespaco/layers/domain/usecases/listar_gestores_de_servico_vinculados_aos_espacos_usecase/listar_gestores_de_servico_vinculados_aos_espacos_usecase.dart';

class ListarGestoresDeServicoVinculadosAosEspacosUseCaseImpl implements ListarGestoresDeServicoVinculadosAosEspacosUseCase {
  final EspacoRepository _espacoRepository;

  ListarGestoresDeServicoVinculadosAosEspacosUseCaseImpl({required EspacoRepository espacoRepository}) : _espacoRepository = espacoRepository;

  @override
  Future<Either<Exception, List<UsuarioEntity?>>> call() {
    return _espacoRepository.getAllGestoresServico();
  }
}
