import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';
import 'package:uniespaco/layers/domain/repositories/servico_repository.dart';
import 'package:uniespaco/layers/domain/usecases/ver_historico_servicos_por_espaco_usecase/ver_historico_servicos_por_espaco_usecase.dart';

class VerHistoricoServicosPorEspacoUseCaseImpl implements VerHistoricoServicosPorEspacoUseCase {
  final ServicoRepository servicoRepository;

  VerHistoricoServicosPorEspacoUseCaseImpl({required this.servicoRepository});

  @override
  Future<Either<Exception, Map<EspacoEntity, List<ServicoEntity?>>>> call({required String usuarioId}) {
    return servicoRepository.getHistoryServicosPorEspaco(gestorId: usuarioId);
  }
}
