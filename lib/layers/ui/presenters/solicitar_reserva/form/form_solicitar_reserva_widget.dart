import 'package:flutter/material.dart';
import 'package:uniespaco/layers/ui/presenters/solicitar_reserva/solicitar_reserva_controller.dart';

class FormSolicitarReservaWidget extends StatefulWidget {
  final SolicitarReservaController controller;

  const FormSolicitarReservaWidget({super.key, required this.controller});

  @override
  State<FormSolicitarReservaWidget> createState() => _FormSolicitarReservaWidgetState();
}

class _FormSolicitarReservaWidgetState extends State<FormSolicitarReservaWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Escreva um titulo para sua solicitação de reserva',
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: widget.controller.titulo,
          decoration: const InputDecoration(
            label: Text("Titulo"),
            border: OutlineInputBorder(),
          ),
          validator: widget.controller.validatorText,
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          'Escreva uma descrição para sua solicitação de reserva',
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: widget.controller.descricao,
          decoration: const InputDecoration(
            label: Text("Descrição"),
            border: OutlineInputBorder(),
          ),
          validator: widget.controller.validatorText,
        ),
        Row(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Horarios para a reserva:"),
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: widget.controller.periodo.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  leading: const Icon(Icons.add_alert),
                  title: Text("Inicio: ${widget.controller.periodo[index].inicio}"),
                  subtitle: Text('Fim: ${widget.controller.periodo[index].fim}'),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
