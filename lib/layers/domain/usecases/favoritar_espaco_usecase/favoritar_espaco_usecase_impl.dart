import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/espaco_repository.dart';
import 'package:uniespaco/layers/domain/usecases/favoritar_espaco_usecase/favoritar_espaco_usecase.dart';

class FavoritarEspacoUseCaseImpl implements FavoritarEspacoUseCase {
  final EspacoRepository espacoRepository;

  FavoritarEspacoUseCaseImpl({required this.espacoRepository});

  @override
  Future<Either<Exception, bool>> call({required List<EspacoEntity>? espacosFavoritados, required UsuarioEntity usuarioEntity}) {
    return espacoRepository.favoritarEspaco(espacosFavoritados: espacosFavoritados, usuarioEntity: usuarioEntity);
  }
}
