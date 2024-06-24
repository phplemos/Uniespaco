import 'package:flutter/material.dart';
import 'package:uniespaco/layers/ui/presenters/minhas_reservas/components/ver_reserva_widget.dart';
import 'package:uniespaco/layers/ui/presenters/minhas_reservas/minhas_reservas_controller.dart';

class MinhasReservasWidget extends StatelessWidget {
  MinhasReservasController controller;

  MinhasReservasWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: controller.reservas.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                child: Card(
                  child: ListTile(
                    leading: const Icon(Icons.add_alert),
                    title: Text("Titulo: ${controller.reservas[index]!.titulo}"),
                    subtitle: Text('Situação: ${controller.reservas[index]!.status}'),
                  ),
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => Center(
                      child: AlertDialog(
                        title:VerReservaWidget(
                          reserva: controller.reservas[index]!,
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
