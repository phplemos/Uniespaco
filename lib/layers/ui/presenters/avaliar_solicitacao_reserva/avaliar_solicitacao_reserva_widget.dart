import 'package:flutter/material.dart';
import 'package:uniespaco/layers/ui/presenters/avaliar_solicitacao_reserva/avaliar_solicitacao_reserva_controller.dart';
import 'package:uniespaco/layers/ui/presenters/avaliar_solicitacao_reserva/components/informacoes_reserva_widget.dart';

class AvaliarSolicitacaoReservaWidget extends StatelessWidget {
  final AvaliarSolicitacaoReservaController controller;

  const AvaliarSolicitacaoReservaWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InformacoesReservaWidget(
        reservaEntity: controller.reserva!,
        usuarioEntity: controller.usuario!,
        espacoEntity: controller.espaco!,
        controller: controller,
      ),
    );
  }
}
