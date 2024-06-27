import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/espaco_repository.dart';
import 'package:uniespaco/layers/domain/usecases/desfavoritar_espaco_usecase/desfavoritar_espaco_usecase.dart';

class DesfavoritarEspacoUseCaseImpl implements DesfavoritarEspacoUseCase {
  final EspacoRepository espacoRepository;

  DesfavoritarEspacoUseCaseImpl({required this.espacoRepository});

  @override
  Future<Either<Exception, bool>> call({required List<EspacoEntity?> espacosFavoritados, required UsuarioEntity usuarioEntity}) {
    return espacoRepository.desfavoritarEspaco(espacosFavoritados: espacosFavoritados, usuarioEntity: usuarioEntity);
  }
}
