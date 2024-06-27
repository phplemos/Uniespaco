import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/ui/presenters/avaliar_solicitacao_reserva/avaliar_solicitacao_reserva.dart';

class ListarReservasWidget extends StatelessWidget {
  final EspacoEntity espaco;
  final List<ReservaEntity?> reservas;

  const ListarReservasWidget({super.key, required this.reservas, required this.espaco});

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
              child: Text("Todas reservas para o espaco"),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: reservas.length,
                itemBuilder: (BuildContext context, int index) {
                  if (reservas[index] != null) {
                    return InkWell(
                      child: Card(
                        child: ListTile(
                          title: Text(
                            "Titulo: ${reservas[index]!.titulo}",
                            textAlign: TextAlign.start,
                          ),
                          subtitle: Column(children: [
                            Text(
                              'Descricao: ${reservas[index]!.descricao}',
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              'Situacao: ${reservas[index]!.status}',
                              textAlign: TextAlign.start,
                            ),
                          ]),
                        ),
                      ),
                      onTap: () async {
                        var reserva = reservas[index];
                        await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AvaliarSolicitacaoReservaPage(reserva: reserva!)),
                        );
                      },
                    );
                  }
                  return Container();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
