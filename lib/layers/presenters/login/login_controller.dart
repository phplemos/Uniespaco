import 'package:uniespaco/layers/domain/usecases/efetuar_login_usecase/efetuar_login_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/efetuar_logout_usecase/efetuar_logout_usecase.dart';
import 'package:uniespaco/layers/presenters/login/login_widget.dart';

class LoginControllerImpl extends LoginController {
  final EfetuarLoginUseCase _efetuarLoginUseCase;
  final EfetuarLogoutUseCase _efetuarLogoutUseCase;

  late String? errorMsg;

  LoginControllerImpl({required EfetuarLoginUseCase efetuarLoginUseCase, required EfetuarLogoutUseCase efetuarLogoutUseCase})
      : _efetuarLoginUseCase = efetuarLoginUseCase,
        _efetuarLogoutUseCase = efetuarLogoutUseCase;

  @override
  Future<bool> login() async {
    var result = await _efetuarLoginUseCase();
    return result.fold((error) => false, (success) {
      if (success) {
        return true;
      }
      errorMsg = 'Favor verificar se dominio pertence a "@uesb.edu.br"';
      return false;
    });
  }

  @override
  Future<void> logout() async {
    var result = await _efetuarLogoutUseCase();
    return result.fold((error) => false, (success) => null);
  }
}
