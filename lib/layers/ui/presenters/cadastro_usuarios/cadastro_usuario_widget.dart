import 'package:flutter/material.dart';
import 'package:uniespaco/layers/ui/presenters/cadastro_usuarios/cadastro_usuario_controller.dart';
import 'package:uniespaco/layers/ui/presenters/cadastro_usuarios/form/form_precadastro_usuario.dart';

class CadastroUsuarioWidget extends StatelessWidget {
  final CadastroUsuarioController controller;

  const CadastroUsuarioWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Precadastro Usuario"),
        const Divider(),
        FormPreCadastroUsuarioWidget(
          controller: controller,
        ),
      ],
    );
  }
}
