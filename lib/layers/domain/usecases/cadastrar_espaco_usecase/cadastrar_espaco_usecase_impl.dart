import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/repositories/espaco_repository.dart';
import 'package:uniespaco/layers/domain/usecases/cadastrar_espaco_usecase/cadastrar_espaco_usecase.dart';

class CadastrarEspacoUseCaseImpl implements CadastrarEspacoUseCase {
  final EspacoRepository _espacoRepository;

  CadastrarEspacoUseCaseImpl({required EspacoRepository espacoRepository}) : _espacoRepository = espacoRepository;

  @override
  Future<Either<Exception, bool>> call({required EspacoEntity espacoEntity}) {
    return _espacoRepository.save(espacoEntity: espacoEntity);
  }
}
