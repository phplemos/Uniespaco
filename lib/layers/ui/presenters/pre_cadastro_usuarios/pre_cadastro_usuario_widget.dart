import 'package:flutter/material.dart';
import 'package:uniespaco/layers/ui/presenters/pre_cadastro_usuarios/form/form_precadastro_usuario.dart';
import 'package:uniespaco/layers/ui/presenters/pre_cadastro_usuarios/pre_cadastro_usuario_controller.dart';

class PreCadastroUsuarioWidget extends StatelessWidget {
  final PreCadastroUsuarioController controller;

  const PreCadastroUsuarioWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          heightFactor: 2,
          child: Text(
            "Precadastrado suario",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const Divider(),
        FormPreCadastroUsuarioWidget(
          controller: controller,
        ),
      ],
    );
  }
}
