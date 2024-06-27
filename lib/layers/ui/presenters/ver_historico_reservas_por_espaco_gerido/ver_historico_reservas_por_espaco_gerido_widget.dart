import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/ui/presenters/ver_historico_reservas_por_espaco_gerido/ver_historico_reservas_por_espaco_gerido_controller.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_reservas_por_espaco_gerido/components/listar_reservas_widget.dart';

class VerHistoricoReservasPorEspacoGeridoWidget extends StatelessWidget {
  final VerHistoricoReservasPorEspacoGeridoController controller;

  const VerHistoricoReservasPorEspacoGeridoWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(2),
      child: Column(
        children: [
          const Center(
            heightFactor: 2,
            child: Text(
              "Historico de reserva dos espacos",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: controller.espacos.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  child: Card(
                    child: ListTile(
                      leading: const Icon(Icons.add_alert),
                      title: Text("Numero: ${controller.espacos[index]!.localizacao.numero}"),
                      subtitle: Text('Modulo: ${controller.espacos[index]!.localizacao.pavilhao}'),
                    ),
                  ),
                  onTap: () {
                    final ValueNotifier<List<ReservaEntity?>> reservas = ValueNotifier(controller.reservasPorEspaco[controller.espacos[index]]!);
                    showDialog(
                      context: context,
                      builder: (context) => ListarReservasWidget(
                        reservas: reservas.value,
                        espaco: controller.espacos[index]!,
                      ),
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
