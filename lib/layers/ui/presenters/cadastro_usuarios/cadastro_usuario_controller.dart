import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/precadastro_usuario_entity.dart';
import 'package:uniespaco/layers/domain/usecases/cadastrar_usuario_usecase/cadastrar_usuario_usecase.dart';

abstract class CadastroUsuarioController extends ChangeNotifier {
  TextEditingController email = TextEditingController();
  String? _tipoUsuario;

  set tipoUsuario(String? tipo) {
    _tipoUsuario = tipo;
    notifyListeners();
  }

  String? get tipoUsuario => _tipoUsuario;

  Future<bool> save();

  String? validatorEmail(String? text);
}

class CadastroUsuarioControllerImpl extends CadastroUsuarioController {
  final CadastrarUsuarioUseCase cadastrarUsuarioUseCase;

  CadastroUsuarioControllerImpl({required this.cadastrarUsuarioUseCase});

  @override
  Future<bool> save() async {
    try {
      var result = await cadastrarUsuarioUseCase(
          preCadastroUsuarioEntity: PreCadastroUsuarioEntity(
              email: email.text, tipoUsuario: tipoUsuario ?? 'comum'));
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
