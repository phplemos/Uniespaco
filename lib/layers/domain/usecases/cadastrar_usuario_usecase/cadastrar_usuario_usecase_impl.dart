import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/precadastro_usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/usuario_repository.dart';
import 'package:uniespaco/layers/domain/usecases/cadastrar_usuario_usecase/cadastrar_usuario_usecase.dart';

class CadastrarUsuarioUseCaseImpl implements CadastrarUsuarioUseCase {
  final UsuarioRepository usuarioRepository;

  CadastrarUsuarioUseCaseImpl({required this.usuarioRepository});

  @override
  Future<Either<Exception, bool>> call(
      {required PreCadastroUsuarioEntity preCadastroUsuarioEntity}) {
    return usuarioRepository.preCadastroUsuario(
        preCadastroUsuarioEntity: preCadastroUsuarioEntity);
  }
}
