import 'package:flutter/material.dart';
import 'package:uniespaco/layers/ui/presenters/meus_servicos/components/ver_servico_widget.dart';
import 'package:uniespaco/layers/ui/presenters/meus_servicos/meus_servicos_controller.dart';

class MeusServicosWidget extends StatelessWidget {
  MeusServicosController controller;

  MeusServicosWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          heightFactor: 2,
          child: Text(
            "Servicos que solicitei",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const Divider(),
        Expanded(
          child: ListView.builder(
            itemCount: controller.servicos.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                child: Card(
                  child: ListTile(
                    leading: const Icon(Icons.add_alert),
                    title: Text("Titulo: ${controller.servicos[index]!.titulo}"),
                    subtitle: Text('Situação: ${controller.servicos[index]!.status}'),
                  ),
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => Center(
                      child: AlertDialog(
                        title: VerServicoWidget(
                          servico: controller.servicos[index]!,
                          controller: controller,
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        )
      ],
    );
  }
}
