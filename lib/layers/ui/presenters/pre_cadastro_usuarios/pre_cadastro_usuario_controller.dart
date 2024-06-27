import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/precadastro_usuario_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/usecases/pre_cadastrar_usuario_usecase/pre_cadastrar_usuario_usecase.dart';

abstract class PreCadastroUsuarioController extends ChangeNotifier {
  TextEditingController email = TextEditingController();
  String? _userRole;

  set userRole(String? role) {
    _userRole = role;
    notifyListeners();
  }

  String? get userRole => _userRole;

  Future<bool> save();

  String? validatorEmail(String? text);
}

class PreCadastroUsuarioControllerImpl extends PreCadastroUsuarioController {
  final PreCadastrarUsuarioUseCase cadastrarUsuarioUseCase;

  PreCadastroUsuarioControllerImpl({required this.cadastrarUsuarioUseCase});

  @override
  Future<bool> save() async {
    try {
      var result = await cadastrarUsuarioUseCase(preCadastroUsuarioEntity: PreCadastroUsuarioEntity(email: email.text, userRole: [UserRole.fromMap(userRole)]));
      return result.fold((l) => false, (r) => true);
    } catch (e) {
      throw Exception("Erro ao salvar");
    }
  }

  @override
  String? validatorEmail(String? text) {
    if (text?.isEmpty ?? true) {
      return 'Campo Obrigatório';
    }
    final exp = RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*$");
    if (!exp.hasMatch(text!)) {
      return 'Formato invalido!';
    }
    return null;
  }
}
