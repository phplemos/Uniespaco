import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/professor_repository.dart';
import 'package:uniespaco/layers/domain/usecases/listar_professores_cadastrados_usecase/listar_professores_cadastrados_usecase.dart';

class ListarProfessoresCadastradosUseCaseImpl implements ListarProfessoresCadastradosUseCase {
  final ProfessorRepository _professorRepository;

  ListarProfessoresCadastradosUseCaseImpl({required ProfessorRepository professorRepository}) : _professorRepository = professorRepository;

  @override
  Future<Either<Exception, List<UsuarioEntity?>>> call() {
    return _professorRepository.getAll();
  }
}
