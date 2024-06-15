import 'package:flutter/material.dart';
import 'package:uniespaco/layers/ui/presenters/solicitar_servico/solicitar_servico_controller.dart';

class FormSolicitarServicoWidget extends StatefulWidget {
  final SolicitarServicoController controller;

  const FormSolicitarServicoWidget({super.key, required this.controller});

  @override
  State<FormSolicitarServicoWidget> createState() => _FormSolicitarServicoWidgetState();
}

class _FormSolicitarServicoWidgetState extends State<FormSolicitarServicoWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Escreva um titulo para sua solicitação de servico',
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: widget.controller.titulo,
          decoration: const InputDecoration(
            label: Text("Titulo"),
            border: OutlineInputBorder(),
          ),
          validator: widget.controller.validatorText,
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          'Escreva uma descrição para sua solicitação de servico',
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: widget.controller.descricao,
          decoration: const InputDecoration(
            label: Text("Descrição"),
            border: OutlineInputBorder(),
          ),
          validator: widget.controller.validatorText,
        ),

      ],
    );
  }
}
