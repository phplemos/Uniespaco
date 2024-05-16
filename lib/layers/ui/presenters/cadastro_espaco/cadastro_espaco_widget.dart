import 'package:flutter/material.dart';
import 'package:uniespaco/layers/ui/presenters/cadastro_espaco/cadastro_espaco_controller.dart';
import 'package:uniespaco/layers/ui/presenters/cadastro_espaco/forms/formulario_cadastro_espaco_widget.dart';

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
