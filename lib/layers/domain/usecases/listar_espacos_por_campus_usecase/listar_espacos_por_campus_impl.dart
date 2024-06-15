import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/repositories/espaco_repository.dart';
import 'package:uniespaco/layers/domain/usecases/listar_espacos_por_campus_usecase/listar_espacos_por_campus.dart';

class ListarEspacosPorCampusUseCaseImpl implements ListarEspacosPorCampusUseCase {
  final EspacoRepository _espacoRepository;

  ListarEspacosPorCampusUseCaseImpl({required EspacoRepository espacoRepository}) : _espacoRepository = espacoRepository;

  @override
  Future<Either<Exception, List<EspacoEntity?>>> call({required Campus campus}) {
    return _espacoRepository.getEspacosPorCampus(campus: campus);
  }
}
