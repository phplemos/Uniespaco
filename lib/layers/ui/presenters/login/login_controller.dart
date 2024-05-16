import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/usecases/efetuar_login_usecase/efetuar_login_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/efetuar_logout_usecase/efetuar_logout_usecase.dart';

abstract class LoginController extends ChangeNotifier {
  String googleImg = 'lib/core/assets/images/google.png';
  String uniespacoImg = 'lib/core/assets/images/uniespaco.png';
  Future<bool> login();
  logout();
}

class LoginControllerImpl extends LoginController {
  final EfetuarLoginUseCase _efetuarLoginUseCase;
  final EfetuarLogoutUseCase _efetuarLogoutUseCase;

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
      return false;
    });
  }

  @override
  logout() async {
    var result = await _efetuarLogoutUseCase();
    result.fold((error) => false, (success) => null);
  }
}
