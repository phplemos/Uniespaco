import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/repositories/espaco_repository.dart';
import 'package:uniespaco/layers/domain/usecases/listar_espacos_usecase/listar_espacos_usecase.dart';

class ListarEspacosUseCaseImpl implements ListarEspacosUseCase {
  final EspacoRepository _espacoRepository;

  ListarEspacosUseCaseImpl({required EspacoRepository espacoRepository}) : _espacoRepository = espacoRepository;

  @override
  Future<Either<Exception, List<EspacoEntity?>>> call() {
    return _espacoRepository.getAll();
  }
}
