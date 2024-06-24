import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';
import 'package:uniespaco/layers/domain/entities/situacao_solicitacao_enum.dart';
import 'package:uniespaco/layers/domain/repositories/servico_repository.dart';
import 'package:uniespaco/layers/domain/usecases/alterar_situacao_servico_usecase/alterar_situacao_servico_usecase.dart';

class AlterarSituacaoServicoUsecaseImpl implements AlterarSituacaoServicoUsecase {
  final ServicoRepository servicoRepository;

  AlterarSituacaoServicoUsecaseImpl({required this.servicoRepository});

  @override
  Future<Either<Exception, bool>> call({required String servicoId, required Situacao situacao, required List<HorarioEntity?> periodo,  required DateTime dia}) {
    return servicoRepository.alterarSituacaoServico(servicoId: servicoId, situacao: situacao, periodo: periodo, dia:dia);
  }
}
