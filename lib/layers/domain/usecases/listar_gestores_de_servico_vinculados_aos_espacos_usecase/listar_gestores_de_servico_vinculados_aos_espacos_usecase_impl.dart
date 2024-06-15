import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/espaco_repository.dart';
import 'package:uniespaco/layers/domain/repositories/servico_repository.dart';
import 'package:uniespaco/layers/domain/usecases/listar_gestores_de_servico_vinculados_aos_espacos_usecase/listar_gestores_de_servico_vinculados_aos_espacos_usecase.dart';

class ListarGestoresDeServicoVinculadosAosEspacosUseCaseImpl implements ListarGestoresDeServicoVinculadosAosEspacosUseCase {
  final ServicoRepository servicoRepository;

  ListarGestoresDeServicoVinculadosAosEspacosUseCaseImpl({required this.servicoRepository});

  @override
  Future<Either<Exception, Map<EspacoEntity, List<UsuarioEntity?>>>> call() {
    return servicoRepository.getAllGestoresServicoEspaco();
  }
}
