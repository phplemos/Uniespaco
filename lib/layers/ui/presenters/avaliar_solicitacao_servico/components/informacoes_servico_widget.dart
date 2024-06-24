import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';
import 'package:uniespaco/layers/domain/entities/situacao_solicitacao_enum.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/ui/presenters/avaliar_solicitacao_servico/avaliar_solicitacao_servico_controller.dart';
import 'package:uniespaco/layers/ui/presenters/avaliar_solicitacao_servico/components/selecionar_dias_para_servico_widget.dart';

class InformacoesServicoWidget extends StatelessWidget {
  final UsuarioEntity usuarioEntity;
  final ServicoEntity servicoEntity;
  final EspacoEntity espacoEntity;
  final AvaliarSolicitacaoServicoController controller;

  InformacoesServicoWidget({super.key, required this.servicoEntity, required this.usuarioEntity, required this.espacoEntity, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Informações sobre o espaco",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text("Campus: ${espacoEntity.localizacao.campus}"),
        Text("Pavilhão: ${espacoEntity.localizacao.pavilhao}"),
        Text("Numero: ${espacoEntity.localizacao.numero}"),
        const Divider(),
        const Text(
          "Informações sobre o solicitação de serviço",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          'Titulo: ${servicoEntity.titulo}',
          textAlign: TextAlign.left,
        ),
        Text(
          'Descricao: ${servicoEntity.descricao}',
          textAlign: TextAlign.left,
        ),
        Text(
          'Situação: ${servicoEntity.status}',
          textAlign: TextAlign.left,
        ),
        Text('Servico para o dia: ${servicoEntity.dia}'),
        StatefulBuilder(builder: (context, state) {
          return SizedBox(
            width: MediaQuery.of(context).size.width - 100,
            child: DropdownButton<Situacao>(
                isExpanded: true,
                value: controller.situacao,
                onChanged: (newValue) {
                  state(() {
                    if (newValue != null) {
                      controller.situacao = newValue;
                    }
                  });
                },
                items: Situacao.values.map((Situacao situacao) {
                  return DropdownMenuItem<Situacao>(value: situacao, child: Text(situacao.text!));
                }).toList()),
          );
        }),
        controller.situacao == Situacao.HOMOLOGADO ? _selecaoDeDiaParaServico() : Container(),
        ElevatedButton(
            onPressed: () async {
              if (controller.horariosSelecionados.isNotEmpty) {
                var response = await controller.atualizarSituacao(idServico: servicoEntity.id!, situacao: controller.situacao);
                if (response) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Situação atualizada com sucesso!')));
                  Navigator.of(context).pushReplacementNamed('/home');
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Erro ao atualizar, tente novamente!')));
                }
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Necessario ao menos um horario para confirmar a solicitação de servico')));
              }
            },
            child: const Text('Alterar situacao'))
      ],
    );
  }

  Widget _selecaoDeDiaParaServico() {
    return Column(
      children: [
        const Divider(),
        const Text(
          "Selecionar dia e horario reservar a sala para o serviço",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SelecionarDiasParaServicoWidget(espaco: espacoEntity, agenda: espacoEntity.agenda, controller: controller)
      ],
    );
  }
}
