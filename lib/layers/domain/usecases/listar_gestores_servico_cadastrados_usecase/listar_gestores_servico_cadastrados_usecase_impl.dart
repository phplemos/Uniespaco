import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/servico_repository.dart';
import 'package:uniespaco/layers/domain/usecases/listar_gestores_servico_cadastrados_usecase/listar_gestores_servico_cadastrados_usecase.dart';

class ListarGestoresServicoCadastradosUsecaseImpl implements ListarGestoresServicoCadastradosUsecase {
  final ServicoRepository servicoRepository;

  ListarGestoresServicoCadastradosUsecaseImpl({required this.servicoRepository});

  Future<Either<Exception, List<UsuarioEntity?>>> call() {
    return servicoRepository.getAllGestoresServico();
  }
}
