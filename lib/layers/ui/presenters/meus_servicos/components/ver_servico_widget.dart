import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';
import 'package:uniespaco/layers/ui/presenters/meus_servicos/meus_servicos_controller.dart';

class VerServicoWidget extends StatelessWidget {
  final ServicoEntity servico;
  final MeusServicosController controller;

  const VerServicoWidget({super.key, required this.servico, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Column(
            children: <Widget>[
              Text('Servico para o espaco'),
              Divider(),
              Text("Titulo: ${servico.titulo}"),
              Text("Descrição: ${servico.descricao}"),
              Text("Situação: ${servico.status}"),
            ],
          ),
        ),
        ElevatedButton(
            onPressed: () async {
              await controller.cancelarSolicitacaoServico(servicoId: servico.id!);
            },
            child: const Text("Cancelar solicitação")),
      ],
    );
  }
}
