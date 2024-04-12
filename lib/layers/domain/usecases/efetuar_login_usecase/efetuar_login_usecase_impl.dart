import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/repositories/usuario_repository.dart';
import 'package:uniespaco/layers/domain/usecases/efetuar_login_usecase/efetuar_login_usecase.dart';

class EfetuarLoginUseCaseImpl implements EfetuarLoginUseCase {
  final UsuarioRepository _usuarioRepository;

  EfetuarLoginUseCaseImpl(this._usuarioRepository);

  @override
  Future<Either<Exception, bool>> call() {
    return _usuarioRepository.login();
  }
  
}
