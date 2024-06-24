import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';
import 'package:uniespaco/layers/ui/presenters/avaliar_solicitacao_servico/avaliar_solicitacao_servico.dart';

class ListarServicosWidget extends StatelessWidget {
  final EspacoEntity espaco;
  final List<ServicoEntity?> servicos;

  const ListarServicosWidget({super.key, required this.servicos, required this.espaco});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          'Pavilhão: ${espaco.localizacao.pavilhao} Numero: ${espaco.localizacao.numero}',
          textAlign: TextAlign.center,
        ),
      ),
      content: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Center(
              heightFactor: 2,
              child: Text("Todas servicos para o espaco"),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: servicos.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    child: Card(
                      child: ListTile(
                        title: Text(
                          "Titulo: ${servicos[index]!.titulo}",
                          textAlign: TextAlign.start,
                        ),
                        subtitle: Column(children: [
                          Text(
                            'Descricao: ${servicos[index]!.descricao}',
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'Situacao: ${servicos[index]!.status}',
                            textAlign: TextAlign.start,
                          ),
                        ]),
                      ),
                    ),
                    onTap: () async {
                      var servico = servicos[index];
                      await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AvaliarSolicitacaoServicoPage(servico: servico!)),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
