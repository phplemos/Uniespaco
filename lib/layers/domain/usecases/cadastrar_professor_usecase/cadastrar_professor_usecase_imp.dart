import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/professor_repository.dart';
import 'package:uniespaco/layers/domain/usecases/cadastrar_professor_usecase/cadastrar_professor_usecase.dart';

class CadastrarProfessorUseCaseImpl implements CadastrarProfessorUseCase {
  final ProfessorRepository _professorRepository;

  CadastrarProfessorUseCaseImpl(this._professorRepository);
  
  @override
  Future<Either<Exception, bool>> call({required UsuarioEntity professorEntity}) {
    return _professorRepository.save(professorEntity: professorEntity);
  }
}
