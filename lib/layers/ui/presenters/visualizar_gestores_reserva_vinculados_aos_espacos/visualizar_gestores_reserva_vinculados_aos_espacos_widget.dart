import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_gestores_reserva_vinculados_aos_espacos/components/listar_gestores_widget.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_gestores_reserva_vinculados_aos_espacos/visualizar_gestores_reserva_vinculados_aos_espacos_controller.dart';

class VisualizarGestoresReservaVinculadosAosEspacosWidget extends StatelessWidget {
  final VisualizarGestoresReservaVinculadosAosEspacosController controller;

  const VisualizarGestoresReservaVinculadosAosEspacosWidget({super.key, required this.controller});

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
                  child: Text("Gestores de Reserva de cada espaco:"),
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
                    if (controller.gestoresPorEspaco != null && controller.espacos[index] != null) {
                      List<UsuarioEntity?> gestores = controller.gestoresPorEspaco[controller.espacos[index]]!;
                      showDialog(
                          context: context,
                          builder: (context) {
                            return ListarGestoresWidget(gestores: gestores, espaco: controller.espacos[index]!);
                          });
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Sem gestores vinculados a esse espaco!')));
                    }
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
