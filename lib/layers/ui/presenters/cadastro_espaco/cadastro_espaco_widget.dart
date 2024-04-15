import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/ui/presenters/cadastro_espaco/forms/formulario_cadastro_espaco_widget.dart';

abstract class CadastroEspacoController extends ChangeNotifier {
  Future<void> save({required Map<String, dynamic> map});
  Future<List<UsuarioEntity>> getGestores();
  Future<UsuarioEntity> getUsuario();
  Future<void> logout();
}

class CadastroEspacoWidget extends StatelessWidget {
  final CadastroEspacoController controller;

  const CadastroEspacoWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [FormularioCadastroEspacoWidget(controller: controller)],
      ),
    );
  }
}
