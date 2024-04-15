import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/usuario_repository.dart';
import 'package:uniespaco/layers/domain/usecases/ver_informacao_do_usuario_usecase/ver_informacao_do_usuario_usecase.dart';

class VerInformacaoDoUsuarioUseCaseImpl implements VerInformacaoDoUsuarioUseCase {
  final UsuarioRepository _usuarioRepository;

  VerInformacaoDoUsuarioUseCaseImpl({required UsuarioRepository usuarioRepository}) : _usuarioRepository = usuarioRepository;

  @override
  Future<Either<Exception, UsuarioEntity>> call() {
    return _usuarioRepository.get();
  }
}
