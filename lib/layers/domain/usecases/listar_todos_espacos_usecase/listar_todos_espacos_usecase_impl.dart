import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/repositories/espaco_repository.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todos_espacos_usecase/listar_todos_espacos_usecase.dart';

class ListarTodosEspacosUseCaseImpl implements ListarTodosEspacosUseCase {
  final EspacoRepository _espacoRepository;

  ListarTodosEspacosUseCaseImpl(this._espacoRepository);

  @override
  Future<Either<Exception, List<EspacoEntity>>> call() {
    return _espacoRepository.getAll();
  }
}
