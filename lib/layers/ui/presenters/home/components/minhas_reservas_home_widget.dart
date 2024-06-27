import 'package:flutter/material.dart';
import 'package:uniespaco/layers/ui/presenters/home/components/ver_reserva_home_widget.dart';
import 'package:uniespaco/layers/ui/presenters/home/home_controller.dart';

class MinhasReservasHomeWidget extends StatelessWidget {
  final HomeController controller;

  const MinhasReservasHomeWidget({super.key, required this.controller});

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
                        title: VerReservaHomeWidget(
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
    ;
  }
}
