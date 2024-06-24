import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/repositories/servico_repository.dart';
import 'package:uniespaco/layers/domain/usecases/cancelar_servico_usecase/cancelar_servico_usecase.dart';

class CancelarServicoUseCaseImpl implements CancelarServicoUseCase {
  final ServicoRepository servicoRepository;

  CancelarServicoUseCaseImpl({required this.servicoRepository});

  @override
  Future<Either<Exception, bool>> call({required String servicoId}) {
    return servicoRepository.cancelarServico(servicoId: servicoId);
  }
}
