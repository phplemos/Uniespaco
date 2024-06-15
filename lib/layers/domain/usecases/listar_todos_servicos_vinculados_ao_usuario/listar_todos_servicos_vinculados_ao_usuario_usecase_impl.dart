import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';
import 'package:uniespaco/layers/domain/repositories/servico_repository.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todos_servicos_vinculados_ao_usuario/listar_todos_servicos_vinculados_ao_usuario_usecase.dart';

class ListarTodosServicosVinculadosAoUsuarioUsecaseImpl implements ListarTodosServicosVinculadosAoUsuarioUsecase {
  final ServicoRepository servicoRepository;

  ListarTodosServicosVinculadosAoUsuarioUsecaseImpl({required this.servicoRepository});

  @override
  Future<Either<Exception, List<ServicoEntity?>>> call({required String usuarioId}) {
    return servicoRepository.getAllFromUsuario(usuarioId: usuarioId);
  }
}
