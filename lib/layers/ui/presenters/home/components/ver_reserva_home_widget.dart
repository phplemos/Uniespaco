import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/ui/presenters/home/home_controller.dart';
import 'package:uniespaco/layers/ui/presenters/minhas_reservas/minhas_reservas_controller.dart';

class VerReservaHomeWidget extends StatelessWidget {
  final ReservaEntity reserva;
  final HomeController controller;

  const VerReservaHomeWidget({super.key, required this.reserva, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Column(
            children: <Widget>[
              Text('Reserva para o espaco'),
              Divider(),
              Text("Titulo: ${reserva.titulo}"),
              Text("Descrição: ${reserva.descricao}"),
              Text("Situação: ${reserva.status}"),
            ],
          ),
        ),
        ElevatedButton(
            onPressed: () async {
              await controller.cancelarSolicitacaoReserva(reservaId: reserva.id!);
            },
            child: const Text("Cancelar solicitação")),
      ],
    );
  }
}
