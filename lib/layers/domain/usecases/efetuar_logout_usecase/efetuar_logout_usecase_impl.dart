import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/repositories/usuario_repository.dart';
import 'package:uniespaco/layers/domain/usecases/efetuar_logout_usecase/efetuar_logout_usecase.dart';

class EfetuarLogoutUseCaseImpl implements EfetuarLogoutUseCase {
  final UsuarioRepository _usuarioRepository;

  EfetuarLogoutUseCaseImpl(this._usuarioRepository);

  @override
  Future<Either<Exception, bool>> call() {
    return _usuarioRepository.logout();
  }
}