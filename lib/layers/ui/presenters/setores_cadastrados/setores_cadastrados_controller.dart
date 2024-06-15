import 'package:flutter/cupertino.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/shared/usuario_provider.dart';

abstract class SetoresCadastradosController extends ChangeNotifier {
  List<UsuarioEntity?> _setores = [];

  List<UsuarioEntity?> get setores => _setores;

  set setores(List<UsuarioEntity?> setores) {
    _setores = setores;
    notifyListeners();
  }

  Future init();
}

class SetoresCadastradosControllerImpl extends SetoresCadastradosController {
  final UsuarioProvider usuarioProvider;

  SetoresCadastradosControllerImpl({required this.usuarioProvider});

  @override
  init() async {
    setores = await usuarioProvider.getSetores();
  }
}
