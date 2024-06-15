import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';
import 'package:uniespaco/layers/domain/repositories/servico_repository.dart';
import 'package:uniespaco/layers/domain/usecases/visualizar_servicos_por_espaco_gerido_usecase/visualizar_servicos_por_espaco_gerido_usecase.dart';

class VisualizarServicosPorEspacoGeridoUsecaseImpl implements VisualizarServicosPorEspacoGeridoUsecase {
  final ServicoRepository servicoRepository;

  VisualizarServicosPorEspacoGeridoUsecaseImpl({required this.servicoRepository});

  @override
  Future<Either<Exception, Map<EspacoEntity, List<ServicoEntity?>>>> call({required String usuarioId}) {
    return servicoRepository.getAllFromUsuarioGestor(usuarioId: usuarioId);
  }
}
