import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';
import 'package:uniespaco/layers/domain/repositories/reserva_repository.dart';
import 'package:uniespaco/layers/domain/repositories/servico_repository.dart';
import 'package:uniespaco/layers/domain/usecases/solicitar_servico_usecase/solicitar_reserva_usecase.dart';

class SolicitarServicoUseCaseImpl implements SolicitarServicoUseCase {
  final ServicoRepository servicoRepository;

  SolicitarServicoUseCaseImpl({required this.servicoRepository});

  @override
  Future<Either<Exception, bool>> call({required ServicoEntity servicoEntity}) {
    return servicoRepository.save(servicoEntity: servicoEntity);
  }
}
