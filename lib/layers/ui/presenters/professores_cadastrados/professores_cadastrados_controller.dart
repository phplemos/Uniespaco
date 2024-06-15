import 'package:flutter/cupertino.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/shared/usuario_provider.dart';

abstract class ProfessoresCadastradosController extends ChangeNotifier {
  List<UsuarioEntity?> _professores = [];

  List<UsuarioEntity?> get professores => _professores;

  set professores(List<UsuarioEntity?> professores) {
    _professores = professores;
    notifyListeners();
  }

  Future init();
}

class ProfessoresCadastradosControllerImpl extends ProfessoresCadastradosController {
  final UsuarioProvider usuarioProvider;

  ProfessoresCadastradosControllerImpl({required this.usuarioProvider});

  @override
  init() async {
    professores = await usuarioProvider.getProfessores();
  }
}
