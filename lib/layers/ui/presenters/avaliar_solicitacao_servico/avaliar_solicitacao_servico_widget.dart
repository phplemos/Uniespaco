import 'package:flutter/material.dart';
import 'package:uniespaco/layers/ui/presenters/avaliar_solicitacao_servico/avaliar_solicitacao_servico_controller.dart';
import 'package:uniespaco/layers/ui/presenters/avaliar_solicitacao_servico/components/informacoes_servico_widget.dart';

class AvaliarSolicitacaoServicoWidget extends StatelessWidget {
  final AvaliarSolicitacaoServicoController controller;

  const AvaliarSolicitacaoServicoWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InformacoesServicoWidget(
        servicoEntity: controller.servico!,
        usuarioEntity: controller.usuario!,
        espacoEntity: controller.espaco!,
        controller: controller,
      ),
    );
  }
}
