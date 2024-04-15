import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/setor_repository.dart';
import 'package:uniespaco/layers/domain/usecases/cadastrar_setor_usecase/cadastrar_setor_usecase.dart';

class CadastrarSetorUseCaseImpl implements CadastrarSetorUseCase {
  final SetorRepository _setorRepository;

  CadastrarSetorUseCaseImpl({required SetorRepository setorRepository}) : _setorRepository = setorRepository;

  @override
  Future<Either<Exception, bool>> call({required UsuarioEntity setorEntity}) {
    return _setorRepository.save(setorEntity: setorEntity);
  }
}
