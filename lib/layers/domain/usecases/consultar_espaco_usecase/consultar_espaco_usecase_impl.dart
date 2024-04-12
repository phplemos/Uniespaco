import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/repositories/espaco_repository.dart';
import 'package:uniespaco/layers/domain/usecases/consultar_espaco_usecase/consultar_espaco_usecase.dart';

class ConsultarEspacoUseCaseImpl implements ConsultarEspacoUseCase {
  final EspacoRepository _espacoRepository;

  ConsultarEspacoUseCaseImpl(this._espacoRepository);

  @override
  Future<Either<Exception, EspacoEntity>> call({required String idEspaco}) {
    return _espacoRepository.getById(idEspaco: idEspaco);
  }
}
