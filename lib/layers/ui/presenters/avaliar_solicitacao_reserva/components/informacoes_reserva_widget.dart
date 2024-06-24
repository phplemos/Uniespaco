import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/domain/entities/situacao_solicitacao_enum.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/ui/presenters/avaliar_solicitacao_reserva/avaliar_solicitacao_reserva_controller.dart';

class InformacoesReservaWidget extends StatelessWidget {
  final UsuarioEntity usuarioEntity;
  final ReservaEntity reservaEntity;
  final EspacoEntity espacoEntity;
  final AvaliarSolicitacaoReservaController controller;
  late Situacao situacao;

  InformacoesReservaWidget({super.key, required this.reservaEntity, required this.usuarioEntity, required this.espacoEntity, required this.controller}) {
    switch (reservaEntity.status) {
      case "Em Analise":
        situacao = Situacao.EM_ANALISE;
        break;
      case "Homologado":
        situacao = Situacao.HOMOLOGADO;
        break;
      case "Cancelada":
        situacao = Situacao.CANCELADO;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Campus: ${espacoEntity.localizacao.campus}"),
        Text("Pavilhão: ${espacoEntity.localizacao.pavilhao}"),
        Text("Numero: ${espacoEntity.localizacao.numero}"),
        Text(
          'Titulo: ${reservaEntity.titulo}',
          textAlign: TextAlign.left,
        ),
        Text(
          'Descricao: ${reservaEntity.descricao}',
          textAlign: TextAlign.left,
        ),
        Text(
          'Situação: ${reservaEntity.status}',
          textAlign: TextAlign.left,
        ),
        Text('Reserva para o dia: ${reservaEntity.dia}'),
        StatefulBuilder(builder: (context, state) {
          return SizedBox(
            width: MediaQuery.of(context).size.width - 100,
            child: DropdownButton<Situacao>(
                isExpanded: true,
                value: situacao,
                onChanged: (newValue) {
                  state(() {
                    if (newValue != null) {
                      situacao = newValue;
                    }
                  });
                },
                items: Situacao.values.map((Situacao situacao) {
                  return DropdownMenuItem<Situacao>(value: situacao, child: Text(situacao.text!));
                }).toList()),
          );
        }),
        SingleChildScrollView(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: reservaEntity.periodo.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Text(
                    "Inicio: ${reservaEntity.periodo[index].inicio}",
                    textAlign: TextAlign.start,
                  ),
                  subtitle: Text(
                    'Fim: ${reservaEntity.periodo[index].fim}',
                    textAlign: TextAlign.start,
                  ),
                ),
              );
            },
          ),
        ),
        ElevatedButton(
            onPressed: () async {
              var response = await controller.atualizarSituacao(idReserva: reservaEntity.id!, situacao: situacao);
              if (response) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Situação atualizada com sucesso!')));
                Navigator.of(context).pushReplacementNamed('/home');
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Erro ao atualizar, tente novamente!')));
              }
            },
            child: const Text('Alterar situacao'))
      ],
    );
  }
}
