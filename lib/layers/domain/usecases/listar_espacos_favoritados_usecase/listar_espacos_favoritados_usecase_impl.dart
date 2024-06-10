import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/repositories/espaco_repository.dart';
import 'package:uniespaco/layers/domain/usecases/listar_espacos_favoritados_usecase/listar_espacos_favoritados_usecase.dart';

class ListarEspacosFavoritadosUseCaseImpl implements ListarEspacosFavoritadosUseCase {
  final EspacoRepository espacoRepository;

  ListarEspacosFavoritadosUseCaseImpl({required this.espacoRepository});

  @override
  Future<Either<Exception, List<EspacoEntity?>>> call({required String usuarioId}) {
    return espacoRepository.getEspacosFavoritados(usuarioId: usuarioId);
  }
}
