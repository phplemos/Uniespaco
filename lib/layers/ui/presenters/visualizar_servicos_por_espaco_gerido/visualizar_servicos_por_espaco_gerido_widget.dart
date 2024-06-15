import 'package:flutter/material.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_servicos_por_espaco_gerido/visualizar_servicos_por_espaco_gerido_controller.dart';

class VisualizarServicosPorEspacoGeridoWidget extends StatelessWidget {
  final VisualizarServicosPorEspacoGeridoController controller;

  const VisualizarServicosPorEspacoGeridoWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 200,
      padding: const EdgeInsets.all(2),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Espacos que contem servicos cadastradas:"),
                ),
              ),
            ],
          ),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Placeholder()));
                },
              );
            },
          ))
        ],
      ),
    );
  }
}
