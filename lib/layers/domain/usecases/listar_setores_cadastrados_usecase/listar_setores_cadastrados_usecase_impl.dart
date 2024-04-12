import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/setor_repository.dart';
import 'package:uniespaco/layers/domain/usecases/listar_setores_cadastrados_usecase/listar_setores_cadastrados_usecase.dart';

class ListarSetoresCadastradosUseCaseImpl
    implements ListarSetoresCadastradosUseCase {
  final SetorRepository _setorRepository;

  ListarSetoresCadastradosUseCaseImpl(this._setorRepository);

  @override
  Future<Either<Exception, List<UsuarioEntity>>> call() {
    return _setorRepository.getAll();
  }
}
