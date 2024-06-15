import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/domain/entities/situacao_solicitacao_enum.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

class InformacoesReservaWidget extends StatelessWidget {
  final UsuarioEntity usuarioEntity;
  final ReservaEntity reservaEntity;
  final EspacoEntity espacoEntity;
  Situacao situacao = Situacao.EM_ANALISE;

  InformacoesReservaWidget({super.key, required this.reservaEntity, required this.usuarioEntity, required this.espacoEntity});

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
        ElevatedButton(onPressed: () {}, child: const Text('Alterar situacao'))
      ],
    );
  }
}
