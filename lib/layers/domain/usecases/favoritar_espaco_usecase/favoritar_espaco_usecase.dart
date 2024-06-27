import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

abstract class FavoritarEspacoUseCase {
  Future<Either<Exception, bool>> call({required List<EspacoEntity?> espacosFavoritados, required UsuarioEntity usuarioEntity});
}
