import 'package:flutter/material.dart';
import 'package:uniespaco/layers/ui/presenters/ver_historico_servicos_por_espaco_gerido/components/listar_servicos_widget.dart';
import 'package:uniespaco/layers/ui/presenters/ver_historico_servicos_por_espaco_gerido/ver_historico_servicos_por_espaco_gerido_controller.dart';

class VerHistoricoServicosPorEspacoGeridoWidget extends StatelessWidget {
  final VerHistoricoServicosPorEspacoGeridoController controller;

  const VerHistoricoServicosPorEspacoGeridoWidget({super.key, required this.controller});

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
                    final servicos = controller.servicosPorEspaco[controller.espacos[index]]!;
                    showDialog(
                      context: context,
                      builder: (context) => ListarServicosWidget(
                        servicos: servicos,
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
