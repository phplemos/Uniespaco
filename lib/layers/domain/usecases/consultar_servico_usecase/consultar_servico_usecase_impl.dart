import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';
import 'package:uniespaco/layers/domain/repositories/servico_repository.dart';
import 'package:uniespaco/layers/domain/usecases/consultar_servico_usecase/consultar_servico_usecase.dart';

class ConsultarServicoUseCaseImpl implements ConsultarServicoUsecase {
  final ServicoRepository servicoRepository;

  ConsultarServicoUseCaseImpl({required this.servicoRepository});

  @override
  Future<Either<Exception, ServicoEntity?>> call({required String idServico}) {
    return servicoRepository.getById(idServico: idServico);
  }
}
